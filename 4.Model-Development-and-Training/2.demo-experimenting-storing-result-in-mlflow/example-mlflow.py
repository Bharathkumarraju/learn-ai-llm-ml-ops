import mlflow
import mlflow.sklearn
from sklearn.datasets import make_regression
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.tree import DecisionTreeRegressor
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error, r2_score, mean_absolute_error, explained_variance_score
import numpy as np

# Set the MLflow tracking URI to the remote MLflow server
mlflow.set_tracking_uri("http://localhost:5001")

# Create synthetic data for regression
X, y = make_regression(n_samples=100, n_features=4, noise=0.1, random_state=42)

# Split the data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Set the experiment name
mlflow.set_experiment("ML Model Experiment")

def log_model(model, model_name):
    with mlflow.start_run(run_name=model_name):
        # Train the model
        model.fit(X_train, y_train)
        
        # Make predictions
        y_pred = model.predict(X_test)
        
        # Calculate metrics
        mse = mean_squared_error(y_test, y_pred)
        rmse = np.sqrt(mse)
        mae = mean_absolute_error(y_test, y_pred)
        r2 = r2_score(y_test, y_pred)
        evs = explained_variance_score(y_test, y_pred)

        # Log metrics
        mlflow.log_metric("mse", mse)
        mlflow.log_metric("rmse", rmse)
        mlflow.log_metric("mae", mae)
        mlflow.log_metric("r2", r2)
        mlflow.log_metric("explained_variance", evs)

        # Log model
        mlflow.sklearn.log_model(model, model_name)
        
        print(f"{model_name} - MSE: {mse}, RMSE: {rmse}, MAE: {mae}, R2: {r2}, Explained Variance: {evs}")

# Linear Regression Model
linear_model = LinearRegression()
log_model(linear_model, "Linear Regression")

# Decision Tree Regressor Model
tree_model = DecisionTreeRegressor()
log_model(tree_model, "Decision Tree Regressor")

# Random Forest Regressor Model
forest_model = RandomForestRegressor()
log_model(forest_model, "Random Forest Regressor")

print("Experiment completed! Check the MLflow server for details.")
