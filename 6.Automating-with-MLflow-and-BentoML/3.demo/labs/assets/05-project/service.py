import bentoml
from bentoml.io import JSON, PandasDataFrame

# Load the registered model
model_runner = bentoml.sklearn.get("health_insurance_anomaly_detector:latest").to_runner()

# Create a BentoML Service
svc = bentoml.Service("health_insurance_anomaly_detection_service", runners=[model_runner])

# Define an API endpoint for prediction
@svc.api(input=PandasDataFrame(), output=JSON())
def predict(data):
    # Make predictions
    predictions = model_runner.predict.run(data)
    # Return predictions as JSON
    return {"predictions": predictions.tolist()}
