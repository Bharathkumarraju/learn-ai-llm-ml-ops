import pandas as pd
from sklearn.ensemble import IsolationForest
from sklearn.model_selection import train_test_split
import mlflow
import mlflow.sklearn

# Load the synthetic data
df = pd.read_csv('synthetic_health_claims.csv')

mlflow.set_tracking_uri("http://127.0.0.1:5000")

# Features to use for the model
features = ['claim_amount', 'num_services', 'patient_age', 'provider_id', 'days_since_last_claim']

# Split the data into training and test sets
X_train, X_test = train_test_split(df[features], test_size=0.2, random_state=42)

# Set up MLflow
mlflow.set_experiment("Health Insurance Claim Anomaly Detection")

with mlflow.start_run():
    # Train the Isolation Forest model
    model = IsolationForest(n_estimators=100, contamination=0.05, random_state=42)
    model.fit(X_train)

    # Predict on the test set
    y_pred_train = model.predict(X_train)
    y_pred_test = model.predict(X_test)
    
    # Convert predictions to anomaly scores (-1 is anomaly, 1 is normal)
    anomaly_score_train = (y_pred_train == -1).astype(int)
    anomaly_score_test = (y_pred_test == -1).astype(int)

    # Log parameters
    mlflow.log_param("n_estimators", 100)
    mlflow.log_param("contamination", 0.05)
    
    # Log metrics
    train_anomaly_percentage = anomaly_score_train.mean() * 100
    test_anomaly_percentage = anomaly_score_test.mean() * 100
    
    mlflow.log_metric("train_anomaly_percentage", train_anomaly_percentage)
    mlflow.log_metric("test_anomaly_percentage", test_anomaly_percentage)

    # Log the model
    mlflow.sklearn.log_model(model, "model")

    print(f"Train Anomaly Percentage: {train_anomaly_percentage:.2f}%")
    print(f"Test Anomaly Percentage: {test_anomaly_percentage:.2f}%")
    print("Model and metrics logged to MLflow.")

