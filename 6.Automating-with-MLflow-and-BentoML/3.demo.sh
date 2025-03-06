
root@controlplane ~/assets/05-project via 🐍 v3.12.3 ➜  python3 synthetic_health_claims.py
Synthetic data generated and saved to 'synthetic_health_claims.csv'.

root@controlplane ~/assets/05-project via 🐍 v3.12.3 ➜


root@controlplane ~ ➜  mlflow ui --host 0.0.0.0 --port 3500
[2025-03-05 18:44:25 -0500] [35657] [INFO] Starting gunicorn 23.0.0
[2025-03-05 18:44:25 -0500] [35657] [INFO] Listening at: http://0.0.0.0:3500 (35657)
[2025-03-05 18:44:25 -0500] [35657] [INFO] Using worker: sync
[2025-03-05 18:44:25 -0500] [35664] [INFO] Booting worker with pid: 35664
[2025-03-05 18:44:25 -0500] [35665] [INFO] Booting worker with pid: 35665
[2025-03-05 18:44:25 -0500] [35666] [INFO] Booting worker with pid: 35666
[2025-03-05 18:44:25 -0500] [35667] [INFO] Booting worker with pid: 35667



Train and evaluate the Isolation Forest model by running
python3 isolation_model.py


You will need to create a Python script to download the model artifact /root/assets/05-project/model.pkl for local use.

MLflow UI host: http://localhost:3500
This is an example format of artifact URI: mlflow-artifacts:/324575258297482099/f877ad1ef20e4b35a44346cd28cf9e2b/artifacts/model/model.pkl
Reference this documentation to create the script:
https://mlflow.org/docs/latest/python_api/mlflow.artifacts.html
https://mlflow.org/docs/latest/python_api/mlflow.set_tracking_uri.html


root@controlplane ~/assets/05-project via 🐍 v3.12.3 ➜  python3 isolation_model.py
2025/03/05 18:46:31 INFO mlflow.tracking.fluent: Experiment with name 'Health Insurance Claim Anomaly Detection' does not exist. Creating a new experiment.
2025/03/05 18:46:36 WARNING mlflow.models.model: Model logged without a signature and input example. Please set `input_example` parameter when logging the model to auto infer the model signature.
Train Anomaly Percentage: 5.00%
Test Anomaly Percentage: 4.29%
Model and metrics logged to MLflow.
🏃 View run dashing-swan-340 at: http://127.0.0.1:3500/#/experiments/981188833218800573/runs/ca50c2fee6194da689f5c05702d2091e
🧪 View experiment at: http://127.0.0.1:3500/#/experiments/981188833218800573

root@controlplane ~/assets/05-project via 🐍 v3.12.3 ➜


mlflow-artifacts:/981188833218800573/ca50c2fee6194da689f5c05702d2091e/artifacts/model
mlflow-artifacts:/981188833218800573/ca50c2fee6194da689f5c05702d2091e/artifacts/model/model.pkl


root@controlplane ~/assets/05-project via 🐍 v3.12.3 ✖ python3 ./download_model_pkl.py
Downloading artifacts: 100%|███████████████████████████████████████████████████████████████| 1/1 [00:00<00:00, 92.84it/s]
Artifact downloaded to: /tmp/tmpz1e2smm6/model.pkl

root@controlplane ~/assets/05-project via 🐍 v3.12.3 ➜



root@controlplane ~/assets/05-project via 🐍 v3.12.3 ➜  python3 ./register_model.py
Model registered with BentoML: Model(tag="health_insurance_anomaly_detector:kxs7et72dwhhi4wj")

root@controlplane ~/assets/05-project via 🐍 v3.12.3 ➜  bentoml models list
 Tag                                                 Module           Size      Creation Time
 health_insurance_anomaly_detector:kxs7et72dwhhi4wj  bentoml.sklearn  1.39 MiB  2025-03-05 18:55:37

root@controlplane ~/assets/05-project via 🐍 v3.12.3 ➜


Now - Start the BentoML service for model predictions.



root@controlplane ~/assets/05-project via 🐍 v3.12.3 ➜  bentoml serve service.py --reload
/usr/local/lib/python3.12/dist-packages/bentoml/io.py:7: BentoMLDeprecationWarning: `bentoml.io` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style IO types instead.
  warn_deprecated(
/usr/local/lib/python3.12/dist-packages/bentoml/_internal/models/model.py:367: BentoMLDeprecationWarning: `get_runnable` is deprecated since BentoML v1.4 and will be removed in a future version. Use `get_service` instead.
  self._runnable = self.info.imported_module.get_runnable(self)
/usr/local/lib/python3.12/dist-packages/bentoml/_internal/models/model.py:354: BentoMLDeprecationWarning: `Runner` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style services.
  return Runner(
/root/assets/05-project/service.py:8: BentoMLDeprecationWarning: `bentoml.Service` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to @bentoml.service().
  svc = bentoml.Service("health_insurance_anomaly_detection_service", runners=[model_runner])
2025-03-05T18:56:55-0500 [INFO] [cli] Environ for worker 0: set CPU thread count to 16
2025-03-05T18:56:55-0500 [INFO] [cli] Prometheus metrics for HTTP BentoServer from "service.py" can be accessed at http://localhost:3000/metrics.
2025-03-05T18:56:55-0500 [INFO] [cli] Starting production HTTP BentoServer from "service.py" listening on http://0.0.0.0:3000 (Press CTRL+C to quit)


Now run the webapp --

root@controlplane ~/assets/05-project via 🐍 v3.12.3 ➜  python3 flask_app.py
 * Serving Flask app 'flask_app'
 * Debug mode: on
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:5005
 * Running on http://192.168.163.25:5005
Press CTRL+C to quit
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 686-296-505


