import mlflow
from llama_index.core import Document, VectorStoreIndex

mlflow.set_experiment(experiment_id="0")
mlflow.llama_index.autolog()

# Ensure that the "OPENAI_API_KEY" environment variable is set
index = VectorStoreIndex.from_documents([Document.example()])
query_engine = index.as_query_engine()

# Querying the engine will cause a trace to be logged
query_engine.query("What is LlamaIndex?")