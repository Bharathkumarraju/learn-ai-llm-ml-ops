from openai import OpenAI
import os
client = OpenAI(
    base_url=os.environ.get("OPENAI_API_BASE")
)
prompt="Tell me a joke"
response = client.chat.completions.create(
            model= "gpt-4o-mini",
            messages=[{"role":"user","content":prompt}],
            max_tokens=100,
            temperature=0.7)
print(response.choices[0].message.content)