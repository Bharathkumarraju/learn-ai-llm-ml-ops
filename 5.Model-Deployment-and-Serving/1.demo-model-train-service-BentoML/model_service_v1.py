import bentoml
from bentoml.io import JSON
from pydantic import BaseModel

# Load the model
model_ref = bentoml.sklearn.get("house_price_model:latest")
model_runner = model_ref.to_runner()

# Define the service
svc = bentoml.Service("house_price_predictor", runners=[model_runner])

# Input schema
class HouseInput(BaseModel):
    square_footage: float
    num_rooms: int

# API for prediction
@svc.api(input=JSON(pydantic_model=HouseInput), output=JSON())
async def predict_house_price(data: HouseInput):
    input_data = [[data.square_footage, data.num_rooms]]
    prediction = await model_runner.predict.async_run(input_data)
    return {"predicted_price": prediction[0]}
