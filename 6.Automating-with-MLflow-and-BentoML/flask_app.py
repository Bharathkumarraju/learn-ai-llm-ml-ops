from flask import Flask, render_template, request
import pandas as pd
import requests
import base64
import io

app = Flask(__name__)

# Route for the home page
@app.route('/')
def index():
    return render_template('index.html')

# Route to handle the CSV file upload and prediction
@app.route('/predict', methods=['POST'])
def predict():
    file_data = request.form.get('file')
    
    # Decode the Base64 encoded file content
    decoded_file = base64.b64decode(file_data.split(',')[1])

    # Read the decoded content into a DataFrame
    df = pd.read_csv(io.StringIO(decoded_file.decode('utf-8')))

    # Separate the 'claim_id' column if it exists
    if 'claim_id' in df.columns:
        claim_ids = df['claim_id']
        df = df.drop(columns=['claim_id'])
    else:
        claim_ids = None

    # Send the DataFrame to the BentoML service
    response = requests.post(
        'http://127.0.0.1:3000/predict',  # BentoML endpoint
        json=df.to_dict(orient='records')
    )

    # Get predictions from the response
    predictions = response.json()['predictions']

    # Add predictions to the DataFrame
    df['Prediction'] = predictions

    # Reattach the 'claim_id' column to the DataFrame
    if claim_ids is not None:
        df['claim_id'] = claim_ids

    # Reorder columns to have 'claim_id' first
    if 'claim_id' in df.columns:
        df = df[['claim_id'] + [col for col in df.columns if col != 'claim_id']]

    # Render the DataFrame as an HTML table
    return render_template('result.html', tables=[df.to_html(classes='data', header="true")])

if __name__ == '__main__':
    app.run(debug=True, port=5005)
