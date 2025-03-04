import bentoml
import pickle

# Load the model from the downloaded PKL file using pickle
model_path = "model.pkl"  # Replace with your actual path

with open(model_path, 'rb') as model_file:  # Open in binary mode
    model = pickle.load(model_file)

# Save the model to BentoML
bento_model = bentoml.sklearn.save_model("health_insurance_anomaly_detector", model)

print(f"Model registered with BentoML: {bento_model}")
