import os
from openai import AzureOpenAI

endpoint = "https://bhrthaihub1179674445.openai.azure.com/"
model_name = "gpt-4o"
deployment = "gpt-4o"

subscription_key = "EhJSsf4BM02dSZ2cuFi0klciOP3VBEnhNJM7B2Nexlc17UNdIqOGJQQJ99BCAC4f1cMXJ3w3123"
api_version = "2024-12-01-preview"

client = AzureOpenAI(
    api_version=api_version,
    azure_endpoint=endpoint,
    api_key=subscription_key,
)

response = client.chat.completions.create(
    stream=True,
    messages=[
        {
            "role": "system",
            "content": "You are a helpful assistant.",
        },
        {
            "role": "user",
            "content": "I am going to Paris, what should I see?",
        }
    ],
    max_tokens=4096,
    temperature=1.0,
    top_p=1.0,
    model=deployment,
)

for update in response:
    if update.choices:
        print(update.choices[0].delta.content or "", end="")

client.close()

