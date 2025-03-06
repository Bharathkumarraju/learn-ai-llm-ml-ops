pip3 install -r requirements.txt

Synthetic Healh Claims - Generate random claims .. both normal and abnormal claims and generates csv

(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$ python3.12 ./synthetic_health_claims.py
Synthetic data generated and saved to 'synthetic_health_claims.csv'.
(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$


Setup MLflow server and run the ML Experiment:(usually we setup mlflow server in k8s as a micro-service)
----------------------------------------------------------------------------------------------------------->
(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$ mlflow ui --port 5001
[2025-03-06 06:34:38 +0800] [8053] [INFO] Starting gunicorn 23.0.0
[2025-03-06 06:34:38 +0800] [8053] [INFO] Listening at: http://127.0.0.1:5001 (8053)
[2025-03-06 06:34:38 +0800] [8053] [INFO] Using worker: sync
[2025-03-06 06:34:38 +0800] [8054] [INFO] Booting worker with pid: 8054
[2025-03-06 06:34:38 +0800] [8055] [INFO] Booting worker with pid: 8055
[2025-03-06 06:34:38 +0800] [8056] [INFO] Booting worker with pid: 8056
[2025-03-06 06:34:38 +0800] [8057] [INFO] Booting worker with pid: 8057


So next step is to train and evaluate a ML model - In this we are going to use a model called Isolation Forest Model.
isolation_model.py


(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$ python3.12 ./isolation_model.py
2025/03/06 06:37:59 INFO mlflow.tracking.fluent: Experiment with name 'Health Insurance Claim Anomaly Detection' does not exist. Creating a new experiment.
2025/03/06 06:38:01 WARNING mlflow.models.model: Model logged without a signature and input example. Please set `input_example` parameter when logging the model to auto infer the model signature.
Train Anomaly Percentage: 5.00%
Test Anomaly Percentage: 4.29%
Model and metrics logged to MLflow.
🏃 View run bright-deer-511 at: http://127.0.0.1:5001/#/experiments/362845262008705571/runs/accfbfcfd6fb4b21a730589340cc8a0b
🧪 View experiment at: http://127.0.0.1:5001/#/experiments/362845262008705571
(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$

Now experiment  got deployed to mlflow server ..download model.pkl file and service it using BentoML

So Register the Model and setup BentoML for serving ML Models:

Register ML Model:
------------------------->

(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$ python3.12 ./register_model.py
Model registered with BentoML: Model(tag="health_insurance_anomaly_detector:c4gg5ih2csj46prc")
(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$

(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$ bentoml models list
 Tag                                                 Module           Size      Creation Time
 health_insurance_anomaly_detector:c4gg5ih2csj46prc  bentoml.sklearn  1.39 MiB  2025-03-06 06:49:26
 house_price_model_v2:v2nt7nxzjcngcprc               bentoml.sklearn  1.56 KiB  2025-03-05 06:33:23
 house_price_model:ymkym6xziwjagprc                  bentoml.sklearn  1.23 KiB  2025-03-05 06:12:29
(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$

So Model has been registered in the BentoML artifact repository.
So we have two places where the model artifacts are present.
  1. One is our mlflow itself and then
  2. In the BentoML
So the difference is in the mlflow you might have 50 models, Because we may run 50 experiments, but in the BentoML list you only have the model that you will be using for the serving purpose.

Lets create the service file which will be used by BentoML to serve the model.

(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$ bentoml serve ./service.py --reload
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/io.py:7: BentoMLDeprecationWarning: `bentoml.io` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style IO types instead.
  warn_deprecated(
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/_internal/models/model.py:367: BentoMLDeprecationWarning: `get_runnable` is deprecated since BentoML v1.4 and will be removed in a future version. Use `get_service` instead.
  self._runnable = self.info.imported_module.get_runnable(self)
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/_internal/models/model.py:354: BentoMLDeprecationWarning: `Runner` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style services.
  return Runner(
/Users/bharathkumardasaraju/external/learn-ml-ops/6.Automating-with-MLflow-and-BentoML/service.py:8: BentoMLDeprecationWarning: `bentoml.Service` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to @bentoml.service().
  svc = bentoml.Service("health_insurance_anomaly_detection_service", runners=[model_runner])
2025-03-06T07:00:22+0800 [INFO] [cli] Environ for worker 0: set CPU thread count to 8
2025-03-06T07:00:22+0800 [INFO] [cli] Prometheus metrics for HTTP BentoServer from "./service.py" can be accessed at http://localhost:3000/metrics.
2025-03-06T07:00:22+0800 [INFO] [cli] Starting production HTTP BentoServer from "./service.py" listening on http://0.0.0.0:3000 (Press CTRL+C to quit)
2025-03-06T07:03:21+0800 [INFO] [api_server:health_insurance_anomaly_detection_service:6] 127.0.0.1:58576 (scheme=http,method=GET,path=/,type=,length=) (status=200,type=text/html; charset=utf-8,length=2945) 1.389ms (trace=4773d94d4e03db1de1df3e9ceb6d55c0,span=a3f21653cb495b4c,sampled=0,service.name=health_insurance_anomaly_detection_service)
2025-03-06T07:03:22+0800 [INFO] [api_server:health_insurance_anomaly_detection_service:6] 127.0.0.1:58583 (scheme=http,method=GET,path=/docs.json,type=,length=) (status=200,type=application/json,length=4825) 17.838ms (trace=5ea37cd2a918ebf85d74672993177891,span=42c03758840366d0,sampled=0,service.name=health_insurance_anomaly_detection_service)


So Now we have /predict endpoint  - /predict endpoint has to be used by any framework(flask, fastapi etc..) which is going to be connect with this /predict endpoint pass the data and it is going to get a prediction.

So we have to build a web-app used by our insurance claim agents, where we can upload the csv file and /predict endpoint gonna predict is valid claim process it or not.


SO Develop Python Flask Web-app to connect to BentoML for Online Serving:
--------------------------------------------------------------------------------->

(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$ python3.12 ./flask_app.py
 * Serving Flask app 'flask_app'
 * Debug mode: on
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on http://127.0.0.1:5005
Press CTRL+C to quit
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 846-305-491
127.0.0.1 - - [06/Mar/2025 07:13:55] "GET / HTTP/1.1" 200 -
127.0.0.1 - - [06/Mar/2025 07:13:55] "GET /favicon.ico HTTP/1.1" 404 -



Now upload csv file to the flask web-app and see the prediction results immediately...

So in the backgroud.. flask be able to actually calls BentoML /predict api endpoint....
so this BentoML /predict endpoint had the ML-Model present and that ML-Model got triggered.. it gives the prediction with results 1 or -1


upgraded flask app

(.venv) bharathkumardasaraju@6.Automating-with-MLflow-and-BentoML$ python3.12 ./v2_app.py
Matplotlib is building the font cache; this may take a moment.
 * Serving Flask app 'v2_app'
 * Debug mode: on
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on http://127.0.0.1:5005
Press CTRL+C to quit
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 846-305-491





