root@controlplane ~ ➜     cd ~/lab/04-bentoml

root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 ➜     python3 -m venv bentoml-env

root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 ➜     source bentoml-env/bin/activate

root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ➜     pip3 install bentoml scikit-learn pandas
Collecting bentoml
  Using cached bentoml-1.4.2-py3-none-any.whl.metadata (16 kB)
Collecting scikit-learn
root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ➜


root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ➜  python3 ./model_train_v1.py

root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ➜  bentoml models list
 Tag                                 Module           Size      Creation Time
 house_price_model:zbsn3yhzjockdisu  bentoml.sklearn  1.23 KiB  2025-03-04 17:55:35

root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ➜

root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ➜     bentoml serve model_service_v1.py --reload
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/bentoml/io.py:7: BentoMLDeprecationWarning: `bentoml.io` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style IO types instead.
  warn_deprecated(
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/bentoml/_internal/models/model.py:367: BentoMLDeprecationWarning: `get_runnable` is deprecated since BentoML v1.4 and will be removed in a future version. Use `get_service` instead.
  self._runnable = self.info.imported_module.get_runnable(self)
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/bentoml/_internal/models/model.py:354: BentoMLDeprecationWarning: `Runner` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style services.
  return Runner(
/root/lab/04-bentoml/model_service_v1.py:10: BentoMLDeprecationWarning: `bentoml.Service` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to @bentoml.service().
  svc = bentoml.Service("house_price_predictor", runners=[model_runner])
2025-03-04T17:56:58-0500 [INFO] [cli] Environ for worker 0: set CPU thread count to 16
2025-03-04T17:56:58-0500 [INFO] [cli] Prometheus metrics for HTTP BentoServer from "model_service_v1.py" can be accessed at http://localhost:3000/metrics.
2025-03-04T17:56:59-0500 [INFO] [cli] Starting production HTTP BentoServer from "model_service_v1.py" listening on http://0.0.0.0:3000 (Press CTRL+C to quit)
2025-03-04T17:57:06-0500 [INFO] [api_server:house_price_predictor:15] 192.168.60.183:45774 (scheme=http,method=GET,path=/,type=,length=) (status=200,type=text/html; charset=utf-8,length=2945) 0.578ms (trace=218283d5547832c34e6ba268d8dbf47f,span=429596d2b591bb43,sampled=0,service.name=house_price_predictor)
2025-03-04T17:57:07-0500 [INFO] [api_server:house_price_predictor:15] 192.168.60.183:45780 (scheme=http,method=GET,path=/static_content/index.css,type=,length=) (status=200,type=text/css; charset=utf-8,length=1127) 10.881ms (trace=eec4e13972950d1dccc7d4385bb2b5e0,span=437ba5041f163403,sampled=0,service.name=house_price_predictor)
2025-03-04T17:57:07-0500 [INFO] [api_server:house_price_predictor:2] 192.168.60.183:45794 (scheme=http,method=GET,path=/static_content/swagger-initializer.js,type=,length=) (status=200,type=text/javascript; charset=utf-8,length=331) 10.296ms (trace=cabc6765ca89380fccc7d4385bb2b248,span=03ec86ece9db6cdb,sampled=0,service.name=house_price_predictor)
2025-03-04T17:57:07-0500 [INFO] [api_server:house_price_predictor:1] 192.168.60.183:45788 (scheme=http,method=GET,path=/static_content/swagger-ui.css,type=,length=) (status=200,type=text/css; charset=utf-8,length=152059) 12.950ms (trace=99ae2d664c29cc40ccc7d4385bb2bc68,span=324fde3f91555ab3,sampled=0,service.name=house_price_predictor)
2025-03-04T17:57:07-0500 [INFO] [api_server:house_price_predictor:7] 192.168.60.183:45810 (scheme=http,method=GET,path=/static_content/swagger-ui-standalone-preset.js,type=,length=) (status=200,type=text/javascript; charset=utf-8,length=230777) 12.003ms (trace=c6cb37a9f7b5a6fbccc7d4385bb2b5a1,span=84f59425694af0de,sampled=0,service.name=house_price_predictor)
2025-03-04T17:57:07-0500 [INFO] [api_server:house_price_predictor:4] 192.168.60.183:45804 (scheme=http,method=GET,path=/static_content/swagger-ui-bundle.js,type=,length=) (status=200,type=text/javascript; charset=utf-8,length=1415333) 18.999ms (trace=dada38ec3c0f8c73ccc7d4385bb2b272,span=0c9efc4dada3c4ae,sampled=0,service.name=house_price_predictor)
2025-03-04T17:57:07-0500 [INFO] [api_server:house_price_predictor:7] 192.168.60.183:45816 (scheme=http,method=GET,path=/docs.json,type=,length=) (status=200,type=application/json,length=5098) 16.176ms (trace=05f74885ffe57bbbf55baa70e9234e3d,span=5a470cb921d4142d,sampled=0,service.name=house_price_predictor)
2025-03-04T17:57:07-0500 [INFO] [api_server:house_price_predictor:8] 192.168.60.183:45830 (scheme=http,method=GET,path=/static_content/favicon-light-32x32.png,type=,length=) (status=200,type=image/png,length=640) 10.184ms (trace=a2268a9955f2bc5af55baa70e92344e0,span=a6e967dd5c102f0a,sampled=0,service.name=house_price_predictor)
2025-03-04T17:57:08-0500 [INFO] [api_server:house_price_predictor:15] 192.168.60.183:45834 (scheme=http,method=GET,path=/docs.json,type=,length=) (status=200,type=application/json,length=5098) 18.135ms (trace=7842cf9d35f7d855222e5d341456be4a,span=5c4870b472d91d3c,sampled=0,service.name=house_price_predictor)
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/sklearn/utils/validation.py:2739: UserWarning: X does not have valid feature names, but LinearRegression was fitted with feature names
  warnings.warn(
2025-03-04T17:57:24-0500 [INFO] [runner:house_price_model:1] _ (scheme=http,method=POST,path=/predict,type=application/octet-stream,length=30) (status=200,type=application/vnd.bentoml.NdarrayContainer,length=8) 6.380ms (trace=4fec2891ae7e347622c1a432ad43e5ba,span=0f24fa0eed75df82,sampled=0,service.name=house_price_model)
2025-03-04T17:57:24-0500 [INFO] [api_server:house_price_predictor:2] 192.168.60.183:41594 (scheme=http,method=POST,path=/predict_house_price,type=application/json,length=45) (status=200,type=application/json,length=37) 141.210ms (tra

root@controlplane ~ ➜

root@controlplane ~ ➜     curl -X POST "http://127.0.0.1:3000/predict_house_price" \
       -H "Content-Type: application/json" \
       -d '{"square_footage": 2500, "num_rooms": 5}'
{"predicted_price":360974.6696035242}
root@controlplane ~ ➜



root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ➜  python3 ./model_train_v2.py

root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ➜  bentoml models list
 Tag                                    Module           Size      Creation Time
 house_price_model_v2:kukdhzpzjskuvisu  bentoml.sklearn  1.56 KiB  2025-03-04 17:59:31
 house_price_model:zbsn3yhzjockdisu     bentoml.sklearn  1.23 KiB  2025-03-04 17:55:35

root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ➜


root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ➜  bentoml serve ./model_service_v2.py --reload
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/bentoml/io.py:7: BentoMLDeprecationWarning: `bentoml.io` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style IO types instead.
  warn_deprecated(
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/bentoml/_internal/models/model.py:367: BentoMLDeprecationWarning: `get_runnable` is deprecated since BentoML v1.4 and will be removed in a future version. Use `get_service` instead.
  self._runnable = self.info.imported_module.get_runnable(self)
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/bentoml/_internal/models/model.py:354: BentoMLDeprecationWarning: `Runner` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style services.
  return Runner(
/root/lab/04-bentoml/model_service_v2.py:10: BentoMLDeprecationWarning: `bentoml.Service` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to @bentoml.service().
  svc = bentoml.Service("house_price_predictor_v2", runners=[model_runner])
2025-03-04T18:01:21-0500 [INFO] [cli] Environ for worker 0: set CPU thread count to 16
2025-03-04T18:01:21-0500 [INFO] [cli] Prometheus metrics for HTTP BentoServer from "./model_service_v2.py" can be accessed at http://localhost:3000/metrics.
2025-03-04T18:01:21-0500 [INFO] [cli] Starting production HTTP BentoServer from "./model_service_v2.py" listening on http://0.0.0.0:3000 (Press CTRL+C to quit)
/root/lab/04-bentoml/ben

2025-03-04T18:01:51-0500 [INFO] [api_server:house_price_predictor_v2:14] 192.168.60.183:54112 (scheme=http,method=GET,path=/,type=,length=) (status=200,type=text/html; charset=utf-8,length=2945) 0.564ms (trace=98ed80dd6901b2111ad2e3684c05a0e9,span=6f41af487e967bc1,sampled=0,service.name=house_price_predictor_v2)
2025-03-04T18:01:51-0500 [INFO] [api_server:house_price_predictor_v2:11] 192.168.60.183:54124 (scheme=http,method=GET,path=/static_content/index.css,type=,length=) (status=304,type=,length=) 9.394ms (trace=d02dac653c2560c61ad2e3684c05a705,span=690c3c9f09a8a78d,sampled=0,service.name=house_price_predictor_v2)
2025-03-04T18:01:51-0500 [INFO] [api_server:house_price_predictor_v2:10] 192.168.60.183:54126 (scheme=http,method=GET,path=/static_content/swagger-ui-bundle.js,type=,length=) (status=304,type=,length=) 12.498ms (trace=588d665e1a96ffaa1ad2e3684c05a001,span=69709ac1b2c53d7a,sampled=0,service.name=house_price_predictor_v2)
2025-03-04T18:01:51-0500 [INFO] [api_server:house_price_predictor_v2:8] 192.168.60.183:54130 (scheme=http,method=GET,path=/static_content/swagger-ui.css,type=,length=) (status=304,type=,length=) 8.980ms (trace=ecdcd48cc1491f2d1ad2e3684c05a4f0,span=29bb04cdec45bd70,sampled=0,service.name=house_price_predictor_v2)
2025-03-04T18:01:51-0500 [INFO] [api_server:house_price_predictor_v2:10] 192.168.60.183:54136 (scheme=http,method=GET,path=/static_content/swagger-ui-standalone-preset.js,type=,length=) (status=304,type=,length=) 7.883ms (trace=b5a9e05e271450971ad2e3684c05a216,span=564d36c5c3fb549d,sampled=0,service.name=house_price_predictor_v2)
2025-03-04T18:01:51-0500 [INFO] [api_server:house_price_predictor_v2:11] 192.168.60.183:54152 (scheme=http,method=GET,path=/static_content/swagger-initializer.js,type=,length=) (status=304,type=,length=) 1.128ms (trace=bdadbbcc5a1769d01ad2e3684c05a4d3,span=7780ea74b1e9c935,sampled=0,service.name=house_price_predictor_v2)
2025-03-04T18:01:52-0500 [INFO] [api_server:house_price_predictor_v2:14] 192.168.60.183:54168 (scheme=http,method=GET,path=/docs.json,type=,length=) (status=200,type=application/json,length=6272) 16.935ms (trace=2be593136933d8c81ad2e3684c05af36,span=c75e4918fc8c2bcd,sampled=0,service.name=house_price_predictor_v2)
2025-03-04T18:01:52-0500 [INFO] [api_server:house_price_predictor_v2:6] 192.168.60.183:54176 (scheme=http,method=GET,path=/static_content/favicon-light-32x32.png,type=,length=) (status=304,type=,length=) 9.380ms (trace=302248365757193a1ad2e3684c05afde,span=d15966acfcbe8f92,sampled=0,service.name=house_price_predictor_v2)
2025-03-04T18:01:52-0500 [INFO] [api_server:house_price_predictor_v2:10] 192.168.60.183:54190 (scheme=http,method=GET,path=/docs.json,type=,length=) (status=200,type=application/json,length=6272) 14.924ms (trace=54540160dd445b58331313b7d7b4f058,span=6ed0ae37f52808a2,sampled=0,service.name=house_price_predictor_v2)



root@controlplane ~/lab/04-bentoml via 🐍 v3.12.3 (bentoml-env) ✖ bentoml serve ./model_service_v3.py --reload
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/bentoml/io.py:7: BentoMLDeprecationWarning: `bentoml.io` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style IO types instead.
  warn_deprecated(
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/bentoml/_internal/models/model.py:367: BentoMLDeprecationWarning: `get_runnable` is deprecated since BentoML v1.4 and will be removed in a future version. Use `get_service` instead.
  self._runnable = self.info.imported_module.get_runnable(self)
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/bentoml/_internal/models/model.py:354: BentoMLDeprecationWarning: `Runner` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style services.
  return Runner(
/root/lab/04-bentoml/model_service_v3.py:12: BentoMLDeprecationWarning: `bentoml.Service` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to @bentoml.service().
  svc = bentoml.Service("house_price_predictor", runners=[model_v1_runner, model_v2_runner])
2025-03-04T18:03:05-0500 [INFO] [cli] Environ for worker 0: set CPU thread count to 16
2025-03-04T18:03:05-0500 [INFO] [cli] Environ for worker 0: set CPU thread count to 16
2025-03-04T18:03:05-0500 [INFO] [cli] Prometheus metrics for HTTP BentoServer from "./model_service_v3.py" can be accessed at http://localhost:3000/metrics.
2025-03-04T18:03:06-0500 [INFO] [cli] Starting production HTTP BentoServer from "./model_service_v3.py" listening on http://0.0.0.0:3000 (Press CTRL+C to quit)
  warnings.warn(
2025-03-04T18:03:14-0500 [INFO] [runner:house_price_model_v2:1] _ (scheme=http,method=POST,path=/predict,type=application/octet-stream,length=71) (status=200,type=application/vnd.bentoml.NdarrayContainer,length=8) 6.956ms (trace=822c5d06fa4b91abbc4219b34ff200a3,span=77fcaceb2e048038,sampled=0,service.name=house_price_model_v2)
2025-03-04T18:03:14-0500 [INFO] [api_server:house_price_predictor:7] 127.0.0.1:39714 (scheme=http,method=POST,path=/predict_house_price_v2,type=application/json,length=206) (status=200,type=application/json,length=40) 13.287ms (trace=822c5d06fa4b91abbc4219b34ff200a3,span=1cfdcd13835fe0cb,sampled=0,service.name=house_price_predictor)
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/sklearn/utils/validation.py:2739: UserWarning: X does not have valid feature names, but LinearRegression was fitted with feature names
  warnings.warn(
2025-03-04T18:03:30-0500 [INFO] [runner:house_price_model:1] _ (scheme=http,method=POST,path=/predict,type=application/octet-stream,length=30) (status=200,type=application/vnd.bentoml.NdarrayContainer,length=8) 1.691ms (trace=5dc25830ea64469475a069536956f824,span=8135a80507ce9164,sampled=0,service.name=house_price_model)
2025-03-04T18:03:30-0500 [INFO] [api_server:house_price_predictor:14] 127.0.0.1:49944 (scheme=http,method=POST,path=/predict_house_price_v1,type=application/json,length=40) (status=200,type=application/json,length=40) 126.227ms (trace=5dc25830ea64469475a069536956f824,span=c94cce88f7a5df33,sampled=0,service.name=house_price_predictor)
/root/lab/04-bentoml/bentoml-env/lib/python3.12/site-packages/sklearn/utils/validation.py:2739: UserWarning: X does not have valid feature names, but LinearRegression was fitted with feature names
  warnings.warn(
2025-03-04T18:03:39-0500 [INFO] [runner:house_price_model_v2:1] _ (scheme=http,method=POST,path=/predict,type=application/octet-stream,length=71) (status=200,type=application/vnd.bentoml.NdarrayContainer,length=8) 1.613ms (trace=7a960e1fc28f21a4aa38e6e018db30ad,span=1f78d735ebc041f0,sampled=0,service.name=house_price_model_v2)
2025-03-04T18:03:39-0500 [INFO] [api_server:house_price_predictor:12] 127.0.0.1:36020 (scheme=http,method=POST,path=/predict_house_price_v2,type=application/json,length=283) (status=200,type=application/json,length=40) 138.923ms (trace=7a960e1fc28f21a4aa38e6e018db30ad,span=f3a6c975024a5938,sampled=0,service.name=house_price_predictor)
root@controlplane ~ ➜


root@controlplane ~ ➜     # Example request for Version 1. You can use any values in the request body.

   curl -X POST "http://127.0.0.1:3000/predict_house_price_v1" \
     -H "Content-Type: application/json" \
     -d '{"square_footage": 2500, "num_rooms": 5}'
{"predicted_price_v1":360974.6696035242}
root@controlplane ~ ➜     # Example request for Version 2. You can use any values in the request body.

   curl -X POST "http://127.0.0.1:3000/predict_house_price_v2" \
     -H "Content-Type: application/json" \
     -d '{
       "square_footage": 2500,
       "num_rooms": 5,
       "num_bathrooms": 3,
       "house_age": 10,
       "distance_to_city_center": 8,
       "has_garage": 1,
       "has_garden": 1,
       "crime_rate": 0.2,
       "avg_school_rating": 8,
       "country": "Germany"
     }'
{"predicted_price_v2":366760.9746143092}
root@controlplane ~ ➜


