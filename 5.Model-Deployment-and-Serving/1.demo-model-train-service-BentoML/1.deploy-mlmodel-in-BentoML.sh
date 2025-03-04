BentoML Serving platform hoting our ML model that is stored in the artifact registry, either mlflow or BentoML repository itself.


(.venv) bharathkumardasaraju@1.demo-model-train-service-BentoML$ python3.12 ./model_train_v1.py
(.venv) bharathkumardasaraju@1.demo-model-train-service-BentoML$ bentoml models list
 Tag                                 Module           Size      Creation Time
 house_price_model:ymkym6xziwjagprc  bentoml.sklearn  1.23 KiB  2025-03-05 06:12:29
(.venv) bharathkumardasaraju@1.demo-model-train-service-BentoML$

Using the above model we will be able to create an API endpoint that could be called by other micro-services - by using BentoML.


(.venv) bharathkumardasaraju@1.demo-model-train-service-BentoML$  bentoml serve ./model_service_v1.py --reload
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/io.py:7: BentoMLDeprecationWarning: `bentoml.io` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style IO types instead.
  warn_deprecated(
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/_internal/models/model.py:367: BentoMLDeprecationWarning: `get_runnable` is deprecated since BentoML v1.4 and will be removed in a future version. Use `get_service` instead.
  self._runnable = self.info.imported_module.get_runnable(self)
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/_internal/models/model.py:354: BentoMLDeprecationWarning: `Runner` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style services.
  return Runner(
/Users/bharathkumardasaraju/external/learn-ml-ops/5.Model-Deployment-and-Serving/1.demo-model-train-service-BentoML/model_service_v1.py:10: BentoMLDeprecationWarning: `bentoml.Service` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to @bentoml.service().
  svc = bentoml.Service("house_price_predictor", runners=[model_runner])
2025-03-05T06:18:29+0800 [INFO] [cli] Environ for worker 0: set CPU thread count to 8
2025-03-05T06:18:29+0800 [INFO] [cli] Prometheus metrics for HTTP BentoServer from "./model_service_v1.py" can be accessed at http://localhost:3000/metrics.
2025-03-05T06:18:29+0800 [INFO] [cli] Starting production HTTP BentoServer from "./model_service_v1.py" listening on http://0.0.0.0:3000 (Press CTRL+C to quit)
2025-03-05T06:19:30+0800 [INFO] [api_server:house_price_predictor:7] 127.0.0.1:62195 (scheme=http,method=GET,path=/,type=,length=) (status=200,type=text/html; charset=utf-8,length=2945) 0.909ms (trace=8978d0eb6894190c2a47e763fc209588,span=f2c5f61991d01d9a,sampled=0,service.name=house_price_predictor)
2025-03-05T06:19:30+0800 [INFO] [api_server:house_price_predictor:7] 127.0.0.1:62195 (scheme=http,method=GET,path=/static_content/swagger-ui.css,type=,length=) (status=200,type=text/css; charset=utf-8,length=152059) 12.396ms (trace=9d4ac53b151f2a6dcd079302a74fa7b1,span=bf82a11a273a3ae4,sampled=0,service.name=house_price_predictor)
2025-03-05T06:19:30+0800 [INFO] [api_server:house_price_predictor:8] 127.0.0.1:62196 (scheme=http,method=GET,path=/static_content/index.css,type=,length=) (status=200,type=text/css; charset=utf-8,length=1127) 8.001ms (trace=63b573791ba86aa360158a850261428a,span=2601acd02c445a68,sampled=0,service.name=house_price_predictor)
2025-03-05T06:19:30+0800 [INFO] [api_server:house_price_predictor:6] 127.0.0.1:62202 (scheme=http,method=GET,path=/static_content/swagger-ui-standalone-preset.js,type=,length=) (status=200,type=text/javascript; charset=utf-8,length=230777) 13.038ms (trace=ec1773c8e2eab4e24761d24cecbe936a,span=521abcf701ace710,sampled=0,service.name=house_price_predictor)
2025-03-05T06:19:30+0800 [INFO] [api_server:house_price_predictor:1] 127.0.0.1:62203 (scheme=http,method=GET,path=/static_content/swagger-initializer.js,type=,length=) (status=200,type=text/javascript; charset=utf-8,length=331) 9.868ms (trace=a5872a906bbff9ea1734e5b38c0d80a6,span=5e48f507a62e7f52,sampled=0,service.name=house_price_predictor)
2025-03-05T06:19:30+0800 [INFO] [api_server:house_price_predictor:4] 127.0.0.1:62201 (scheme=http,method=GET,path=/static_content/swagger-ui-bundle.js,type=,length=) (status=200,type=text/javascript; charset=utf-8,length=1415333) 33.879ms (trace=e6c2a6d776fda606483116ab01f7e34d,span=aac2d6eef78370e3,sampled=0,service.name=house_price_predictor)
2025-03-05T06:19:31+0800 [INFO] [api_server:house_price_predictor:4] 127.0.0.1:62201 (scheme=http,method=GET,path=/docs.json,type=,length=) (status=200,type=application/json,length=5098) 22.405ms (trace=7acffd095d6f3d7e9995185f1a13e7f5,span=48b17fce66c2c6de,sampled=0,service.name=house_price_predictor)




bharathkumardasaraju@elastic-snapshot$ curl -X POST "http://127.0.0.1:3000/predict_house_price" \
        -H "Content-Type: application/json" \
        -d '{"square_footage": 2500, "num_rooms": 5}'
{"predicted_price":360974.66960352426}%
bharathkumardasaraju@elastic-snapshot$





(.venv) bharathkumardasaraju@1.demo-model-train-service-BentoML$ python3.12 ./model_train_v2.py
(.venv) bharathkumardasaraju@1.demo-model-train-service-BentoML$ bentoml models list
 Tag                                    Module           Size      Creation Time
 house_price_model_v2:v2nt7nxzjcngcprc  bentoml.sklearn  1.56 KiB  2025-03-05 06:33:23
 house_price_model:ymkym6xziwjagprc     bentoml.sklearn  1.23 KiB  2025-03-05 06:12:29
(.venv) bharathkumardasaraju@1.demo-model-train-service-BentoML$

(.venv) bharathkumardasaraju@1.demo-model-train-service-BentoML$ bentoml serve ./model_service_v2.py --reload
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/io.py:7: BentoMLDeprecationWarning: `bentoml.io` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style IO types instead.
  warn_deprecated(
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/_internal/models/model.py:367: BentoMLDeprecationWarning: `get_runnable` is deprecated since BentoML v1.4 and will be removed in a future version. Use `get_service` instead.
  self._runnable = self.info.imported_module.get_runnable(self)
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/_internal/models/model.py:354: BentoMLDeprecationWarning: `Runner` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style services.
  return Runner(
/Users/bharathkumardasaraju/external/learn-ml-ops/5.Model-Deployment-and-Serving/1.demo-model-train-service-BentoML/model_service_v2.py:10: BentoMLDeprecationWarning: `bentoml.Service` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to @bentoml.service().
  svc = bentoml.Service("house_price_predictor_v2", runners=[model_runner])
2025-03-05T06:34:32+0800 [INFO] [cli] Environ for worker 0: set CPU thread count to 8
2025-03-05T06:34:32+0800 [INFO] [cli] Prometheus metrics for HTTP BentoServer from "./model_service_v2.py" can be accessed at http://localhost:3000/metrics.
2025-03-05T06:34:33+0800 [INFO] [cli] Starting production HTTP BentoServer from "./model_service_v2.py" listening on http://0.0.0.0:3000 (Press CTRL+C to quit)
2025-03-05T06:35:30+0800 [INFO] [api_server:house_price_predictor_v2:2] 127.0.0.1:62779 (scheme=http,method=GET,path=/,type=,length=) (status=200,type=text/html; charset=utf-8,length=2945) 0.474ms (trace=18766c94f7b3d5856524c88cc3697727,span=7b3a19b7ab2d46ab,sampled=0,service.name=house_price_predictor_v2)
2025-03-05T06:35:30+0800 [INFO] [api_server:house_price_predictor_v2:2] 127.0.0.1:62779 (scheme=http,method=GET,path=/static_content/swagger-ui.css,type=,length=) (status=304,type=,length=) 16.521ms (trace=51fd56906dcef284e0948367f1418b7e,span=a298b093920184db,sampled=0,service.name=house_price_predictor_v2)
2025-03-05T06:35:30+0800 [INFO] [api_server:house_price_predictor_v2:2] 127.0.0.1:62784 (scheme=http,method=GET,path=/static_content/swagger-ui-bundle.js,type=,length=) (status=304,type=,length=) 6.798ms (trace=f552e21138fc3b9ac26eec200945d383,span=443e7c14234c6154,sampled=0,service.name=house_price_predictor_v2)
2025-03-05T06:35:30+0800 [INFO] [api_server:house_price_predictor_v2:1] 127.0.0.1:62780 (scheme=http,method=GET,path=/static_content/index.css,type=,length=) (status=304,type=,length=) 12.268ms (trace=0cf5abcc5fe116498f3e63b2997fa462,span=4dc38d2677d16a7b,sampled=0,service.name=house_price_predictor_v2)
2025-03-05T06:35:30+0800 [INFO] [api_server:house_price_predictor_v2:3] 127.0.0.1:62787 (scheme=http,method=GET,path=/static_content/swagger-ui-standalone-preset.js,type=,length=) (status=304,type=,length=) 11.479ms (trace=654addd10925550a2ef15ea65f3e721c,span=d595036abc0dac06,sampled=0,service.name=house_price_predictor_v2)



bharathkumardasaraju@elastic-snapshot$    curl -X POST "http://127.0.0.1:3000/predict_house_price" \
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
{"predicted_price":366760.9746143092}%
bharathkumardasaraju@elastic-snapshot$

Serving with the multiple models using same BEntoMl Endpoint

(.venv) bharathkumardasaraju@1.demo-model-train-service-BentoML$
(.venv) bharathkumardasaraju@1.demo-model-train-service-BentoML$ bentoml serve ./model_service_v3.py --reload
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/io.py:7: BentoMLDeprecationWarning: `bentoml.io` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style IO types instead.
  warn_deprecated(
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/_internal/models/model.py:367: BentoMLDeprecationWarning: `get_runnable` is deprecated since BentoML v1.4 and will be removed in a future version. Use `get_service` instead.
  self._runnable = self.info.imported_module.get_runnable(self)
/Users/bharathkumardasaraju/external/learn-ml-ops/.venv/lib/python3.12/site-packages/bentoml/_internal/models/model.py:354: BentoMLDeprecationWarning: `Runner` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to new style services.
  return Runner(
/Users/bharathkumardasaraju/external/learn-ml-ops/5.Model-Deployment-and-Serving/1.demo-model-train-service-BentoML/model_service_v3.py:12: BentoMLDeprecationWarning: `bentoml.Service` is deprecated since BentoML v1.4 and will be removed in a future version. Please upgrade to @bentoml.service().
  svc = bentoml.Service("house_price_predictor", runners=[model_v1_runner, model_v2_runner])
2025-03-05T06:41:59+0800 [INFO] [cli] Environ for worker 0: set CPU thread count to 8
2025-03-05T06:41:59+0800 [INFO] [cli] Environ for worker 0: set CPU thread count to 8
2025-03-05T06:41:59+0800 [INFO] [cli] Prometheus metrics for HTTP BentoServer from "./model_service_v3.py" can be accessed at http://localhost:3000/metrics.
2025-03-05T06:42:00+0800 [INFO] [cli] Starting production HTTP BentoServer from "./model_service_v3.py" listening on http://0.0.0.0:3000 (Press CTRL+C to quit)
2025-03-05T06:42:07+0800 [INFO] [api_server:house_price_predictor:7] 127.0.0.1:63078 (scheme=http,method=GET,path=/,type=,length=) (status=200,type=text/html; charset=utf-8,length=2945) 0.779ms (trace=b23311a398acc3be477b1101276a8583,span=d0fc8d1ab7f7600c,sampled=0,service.name=house_price_predictor)
2025-03-05T06:42:07+0800 [INFO] [api_server:house_price_predictor:7] 127.0.0.1:63078 (scheme=http,method=GET,path=/static_content/index.css,type=,length=) (status=304,type=,length=) 21.008ms (trace=6d29c0223563a23297e9b2675f86160c,span=db54c42be948e88b,sampled=0,service.name=house_price_predictor)
2025-03-05T06:42:07+0800 [INFO] [api_server:house_price_predictor:7] 127.0.0.1:63083 (scheme=http,method=GET,path=/static_content/swagger-ui-standalone-preset.js,type=,length=) (status=304,type=,length=) 10.899ms (trace=ff16ca522e266380de23129f7a8199db,span=1833c6e51ca2ad57,sampled=0,service.name=house_price_predictor)
2025-03-05T06:42:07+0800 [INFO] [api_server:house_price_predictor:7] 127.0.0.1:63082 (scheme=http,method=GET,path=/static_content/swagger-ui.css,type=,length=) (status=304,type=,length=) 12.913ms (trace=d0a953aa19cfe839fcc2520c4978d5f9,span=859960399bf06a77,sampled=0,service.name=house_price_predictor)
2025-03-05T06:42:07+0800 [INFO] [api_server:house_price_predictor:7] 127.0.0.1:63085 (scheme=http,method=GET,path=/static_content/swagger-initializer.js,type=,length=) (status=304,type=,length=) 15.737ms (trace=9ec080e1b6d8a03d2c278f7d565d1ac3,span=98bb93083fd15aee,sampled=0,service.name=house_price_predictor)



bharathkumardasaraju@elastic-snapshot$ curl -X POST "http://127.0.0.1:3000/predict_house_price_v1" \
          -H "Content-Type: application/json" \
          -d '{"square_footage": 2500, "num_rooms": 5}'
{"predicted_price_v1":360974.66960352426}%
bharathkumardasaraju@elastic-snapshot$
bharathkumardasaraju@elastic-snapshot$
bharathkumardasaraju@elastic-snapshot$ curl -X POST "http://127.0.0.1:3000/predict_house_price_v2" \
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
{"predicted_price_v2":366760.9746143092}%
bharathkumardasaraju@elastic-snapshot$


