import mlflow
from langchain_openai import OpenAI
from langchain_core.prompts import PromptTemplate

mlflow.set_experiment(experiment_id="0")
mlflow.langchain.autolog()

# Ensure that the "OPENAI_API_KEY" environment variable is set
llm = OpenAI()
prompt = PromptTemplate.from_template("Answer the following question: {question}")
chain = prompt | llm

# Invoking the chain will cause a trace to be logged
chain.invoke("What is MLflow?")