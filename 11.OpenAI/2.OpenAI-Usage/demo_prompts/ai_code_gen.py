from openai import OpenAI
import os

client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY"),
    base_url=os.environ.get("OPENAI_API_BASE")
)
prompt = "Give me a motivational quote"

response = client.chat.completions.create(
        model= "gpt-4o-mini",
        messages=[{"role":"user","content":prompt}],
        max_tokens=50)
print(response.choices[0].message.content)