import os
from azure.ai.inference import ChatCompletionsClient
from azure.ai.inference.models import SystemMessage, UserMessage
from azure.core.credentials import AzureKeyCredential

endpoint = "https://bhrthaihub1179674445.services.ai.azure.com/models"
model_name = "Cohere-command-r-08-2024"

client = ChatCompletionsClient(
    endpoint=endpoint,
    credential=AzureKeyCredential("EhJSsf4BM02dSZ2cuFi0klciOP3VBEnhNJM7B2Nexlc17UNdIqOGJQQJ991319"),
)

response = client.complete(
    stream=True,
    messages=[
        SystemMessage(content="You are a helpful assistant."),
        UserMessage(content="I am going to Paris, what should I see?")
    ],
    max_tokens=2048,
    temperature=0.8,
    top_p=0.1,
    frequency_penalty=0.0,
    presence_penalty=0.0,
    model=model_name
)

for update in response:
    if update.choices:
        print(update.choices[0].delta.content or "", end="")

client.close()