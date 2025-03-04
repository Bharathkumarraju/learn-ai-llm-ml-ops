import bentoml
from bentoml.io import JSON
from pydantic import BaseModel

# Load the v1 and v2 models
model_v1_ref = bentoml.sklearn.get("house_price_model:latest")
model_v2_ref = bentoml.sklearn.get("house_price_model_v2:latest")
model_v1_runner = model_v1_ref.to_runner()
model_v2_runner = model_v2_ref.to_runner()

# Define the service with both runners
svc = bentoml.Service("house_price_predictor", runners=[model_v1_runner, model_v2_runner])

# Input schema for V1 (simpler model)
class HouseInputV1(BaseModel):
    square_footage: float
    num_rooms: int

# Input schema for V2 (expanded model)
class HouseInputV2(BaseModel):
    square_footage: float
    num_rooms: int
    num_bathrooms: int
    house_age: int
    distance_to_city_center: float
    has_garage: int
    has_garden: int
    crime_rate: float
    avg_school_rating: float
    country: str

# API for V1 model prediction
@svc.api(input=JSON(pydantic_model=HouseInputV1), output=JSON(), route="/predict_house_price_v1")
async def predict_house_price_v1(data: HouseInputV1):
    input_data = [[data.square_footage, data.num_rooms]]
    prediction = await model_v1_runner.predict.async_run(input_data)
    return {"predicted_price_v1": prediction[0]}

# API for V2 model prediction
@svc.api(input=JSON(pydantic_model=HouseInputV2), output=JSON(), route="/predict_house_price_v2")
async def predict_house_price_v2(data: HouseInputV2):
    # One-hot encoding for the country
    country_encoded = [0, 0, 0]  # Default for ['Canada', 'Germany', 'UK']
    if data.country == "Canada":
        country_encoded[0] = 1
    elif data.country == "Germany":
        country_encoded[1] = 1
    elif data.country == "UK":
        country_encoded[2] = 1

    input_data = [[
        data.square_footage, data.num_rooms, data.num_bathrooms, data.house_age,
        data.distance_to_city_center, data.has_garage, data.has_garden,
        data.crime_rate, data.avg_school_rating
    ] + country_encoded]
    
    prediction = await model_v2_runner.predict.async_run(input_data)
    return {"predicted_price_v2": prediction[0]}
