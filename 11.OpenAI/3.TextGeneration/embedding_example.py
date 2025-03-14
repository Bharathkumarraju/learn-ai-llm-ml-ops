# Embedding example

import os
from openai import OpenAI

api_key = os.getenv("OPENAI_API_KEY")
client = OpenAI(api_key=api_key)

response = client.embeddings.create(
    input="Upon Moana2 release, critics complimented that the grpahics are outstanding!",
    model="text-embedding-3-small"
)

print(response.data[0].embedding)
