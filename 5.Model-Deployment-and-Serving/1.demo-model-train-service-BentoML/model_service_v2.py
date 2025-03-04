import bentoml
from bentoml.io import JSON
from pydantic import BaseModel

# Load the model
model_ref = bentoml.sklearn.get("house_price_model_v2:latest")
model_runner = model_ref.to_runner()

# Define the service
svc = bentoml.Service("house_price_predictor_v2", runners=[model_runner])

# Input schema
class HouseInput(BaseModel):
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

# API for prediction
@svc.api(input=JSON(pydantic_model=HouseInput), output=JSON())
async def predict_house_price(data: HouseInput):
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
    
    prediction = await model_runner.predict.async_run(input_data)
    return {"predicted_price": prediction[0]}
