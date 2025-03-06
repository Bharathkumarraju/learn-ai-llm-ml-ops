import mlflow

# Set the MLflow tracking URI
mlflow.set_tracking_uri("http://localhost:3500")

# Define the artifact URI as a string (ensure it's correctly formatted)
artifact_uri = "mlflow-artifacts:/981188833218800573/ca50c2fee6194da689f5c05702d2091e/artifacts/model/model.pkl"

# Download the artifact
local_path = mlflow.artifacts.download_artifacts(artifact_uri=artifact_uri)

print(f"Artifact downloaded to: {local_path}")
