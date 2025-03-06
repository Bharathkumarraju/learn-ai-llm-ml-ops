import requests
import pandas as pd

# Define 10 different test inputs
test_data = [
    {"claim_amount": 1000, "num_services": 2, "patient_age": 30, "provider_id": 1, "days_since_last_claim": 100},
    {"claim_amount": 2000, "num_services": 5, "patient_age": 45, "provider_id": 2, "days_since_last_claim": 200},
    {"claim_amount": 15000, "num_services": 10, "patient_age": 50, "provider_id": 3, "days_since_last_claim": 300},
    {"claim_amount": 500, "num_services": 1, "patient_age": 25, "provider_id": 4, "days_since_last_claim": 10},
    {"claim_amount": 7500, "num_services": 8, "patient_age": 60, "provider_id": 5, "days_since_last_claim": 50},
    {"claim_amount": 2500, "num_services": 3, "patient_age": 35, "provider_id": 6, "days_since_last_claim": 120},
    {"claim_amount": 9000, "num_services": 15, "patient_age": 70, "provider_id": 7, "days_since_last_claim": 180},
    {"claim_amount": 400, "num_services": 2, "patient_age": 22, "provider_id": 8, "days_since_last_claim": 365},
    {"claim_amount": 11000, "num_services": 6, "patient_age": 55, "provider_id": 9, "days_since_last_claim": 250},
    {"claim_amount": 600, "num_services": 4, "patient_age": 40, "provider_id": 10, "days_since_last_claim": 30},
]

# Convert to DataFrame
df_test = pd.DataFrame(test_data)

# Make the prediction request
response = requests.post("http://127.0.0.1:3000/predict", json=df_test.to_dict(orient="records"))

# Check the response
if response.status_code == 200:
    predictions = response.json()["predictions"]
    for i, prediction in enumerate(predictions):
        print(f"Test Case {i+1}: Prediction: {prediction}")
else:
    print(f"Error: {response.status_code} - {response.text}")
