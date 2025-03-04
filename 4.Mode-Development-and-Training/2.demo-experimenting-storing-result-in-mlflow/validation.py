from mlflow.tracking import MlflowClient

client = MlflowClient()
for rm in client.search_registered_models():
    print(f"Model name: {rm.name}")
