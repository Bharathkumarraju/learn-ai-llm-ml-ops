import pandas as pd
import numpy as np

# Set random seed for reproducibility
np.random.seed(42)

# Generate synthetic data
num_samples = 1000
data = {
    'claim_id': np.arange(1, num_samples + 1),
    'claim_amount': np.random.normal(1000, 250, num_samples),
    'num_services': np.random.randint(1, 10, num_samples),
    'patient_age': np.random.randint(18, 90, num_samples),
    'provider_id': np.random.randint(1, 50, num_samples),
    'days_since_last_claim': np.random.randint(0, 365, num_samples),
}

# Convert to DataFrame
df = pd.DataFrame(data)

# Introduce some anomalies (e.g., very high claim amounts)
num_anomalies = 50
anomalies = {
    'claim_id': np.arange(num_samples + 1, num_samples + num_anomalies + 1),
    'claim_amount': np.random.normal(10000, 2500, num_anomalies),  # Much higher amounts
    'num_services': np.random.randint(10, 20, num_anomalies),
    'patient_age': np.random.randint(18, 90, num_anomalies),
    'provider_id': np.random.randint(1, 50, num_anomalies),
    'days_since_last_claim': np.random.randint(0, 365, num_anomalies),
}

df_anomalies = pd.DataFrame(anomalies)

# Combine normal data with anomalies
df = pd.concat([df, df_anomalies]).reset_index(drop=True)

# Shuffle the dataset
df = df.sample(frac=1).reset_index(drop=True)

# Save the data to CSV
df.to_csv('synthetic_health_claims.csv', index=False)

print("Synthetic data generated and saved to 'synthetic_health_claims.csv'.")
