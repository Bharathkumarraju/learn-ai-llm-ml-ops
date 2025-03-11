import os
from openai import OpenAI

# Load OpenAI API key from environment variable
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

if not OPENAI_API_KEY:
    raise ValueError("Missing OpenAI API Key. Set it in environment variables.")

# Initialize OpenAI client
client = OpenAI(api_key=OPENAI_API_KEY)

# English sentence to be translated
english_sentence = "My name is Jane. What is yours?"

# Generate translation using OpenAI
response = client.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": "You will be provided with a sentence in English, and your task is to translate it into French."},
        {"role": "user", "content": english_sentence}
    ],
    temperature=0.7,
    max_tokens=64,
    top_p=1
)

# Print the AI-generated translation
print("English:", english_sentence)
print("French:", response.choices[0].message.content)
