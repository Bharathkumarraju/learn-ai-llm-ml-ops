import mlflow
from openai import OpenAI

mlflow.set_experiment(experiment_id="0")
mlflow.openai.autolog()

# Ensure that the "OPENAI_API_KEY" environment variable is set
client = OpenAI()

messages = [
  {"role": "system", "content": "You are a helpful assistant."},
  {"role": "user", "content": "Hello!"}
]

# Inputs and outputs of the API request will be logged in a trace
client.chat.completions.create(model="gpt-4o-mini", messages=messages)