mlflow - Managing ML experiments


1. Model Selection - (Select from different machine learning models)
2. Run experiments on the selected models
3. Test the same-data with different ML Models

The important step is visualizing the data and trying to understand which model is the best fit for this usecase.
This is an iterative process - and this is where MLflow is actually helpful.

mlflow is an open-source platform for managing the machine learning lifecycle, from tracking experiments to model deployment.

MLFlow modules
--------------------->
1. Tracking  - Record and query experiments(code, data, config, results).
2. Projects - Packaging format for reproducible runs on any platform.
3. Models - General format that standardizes the deployment paths.
            Once we have finalized the model, we can save it in MLflows format and deploy it in any format, whether it is flask, fastapi or BentoML
4. Model Registry - Centralized and collaborative model lifecycle management.



