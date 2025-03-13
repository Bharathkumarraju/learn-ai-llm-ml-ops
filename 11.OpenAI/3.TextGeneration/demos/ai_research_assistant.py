import os
import pandas as pd
from openai import OpenAI

# Read API key from environment
api_key = os.getenv("OPENAI_API_KEY")

# Initialize OpenAI client
client = OpenAI(api_key=api_key)

# Read the CSV file
csv_file_path = "./users.csv"
df = pd.read_csv(csv_file_path)

# Define a function to analyze data using OpenAI
def analyze_data(df):
    response = client.chat.completions.create(
        model="gpt-3.5-turbo",
        messages=[
            {
                "role": "user",
                "content": f"You are a research assistant. Provide key insights from the following dataset in point form only from demographics :\n\n{df.to_string()}"
            }
        ],
        max_tokens=500,
        temperature=0.2
    )

    return response.choices[0].message.content

# Run analysis and print insights
print(analyze_data(df))
