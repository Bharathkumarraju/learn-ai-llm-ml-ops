import os
import mlflow
from autogen import AssistantAgent, UserProxyAgent

mlflow.set_experiment(experiment_id="0")
mlflow.autogen.autolog()

# Ensure that the "OPENAI_API_KEY" environment variable is set
llm_config = {"model": "gpt-4o-mini", "api_key": os.environ["OPENAI_API_KEY"]}
assistant = AssistantAgent("assistant", llm_config=llm_config)
user_proxy = UserProxyAgent("user_proxy", code_execution_config=False)

# All intermediate executions within the chat session will be logged
user_proxy.initiate_chat(assistant, message="What is MLflow?", max_turns=1)