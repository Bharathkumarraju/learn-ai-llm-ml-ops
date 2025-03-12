from openai import OpenAI
import os

client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY"),
)

prompt = "Give me a motivational quote"
response = client.chat.completions.create(
        model= "gpt-4o-mini",
        messages=[{"role":"user","content":prompt}],
        max_tokens=50)
print(response.choices[0].message.content)
response = client.chat.completions.create(
        model= "gpt-4o-mini",
        messages=[{"role":"user","content":prompt}],
        max_tokens=50,
        temperature=0.7)
print(response.choices[0].message.content)
prompt = """Here are some examples of motivational quotes:
1. The only way to do great work is to love what you do.
2. Success is not the key to happiness. Happiness is the key to success.
Now, generate a new motivational quote."""

response = client.chat.completions.create(
        model= "gpt-4o-mini",
        messages=[{"role":"user","content":prompt}],
        max_tokens=50,
        temperature=0.7)
print(response.choices[0].message.content)

