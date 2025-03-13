from bentoml import client
from openai import OpenAI
import os

#client = OpenAI(
#    api_key=os.environ.get("OPENAI_API_KEY")
#)

client  = OpenAI()

prompt = "tell me a joke!"

def chat_comp(prompt):

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=250,
        temperature=0.7
    )

    return response.choices[0].message.content

print(chat_comp(prompt))
