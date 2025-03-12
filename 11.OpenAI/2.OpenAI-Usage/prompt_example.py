from openai import OpenAI
import os


# Load OpenAI API key from environment variable
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

if not OPENAI_API_KEY:
    raise ValueError("Missing OpenAI API Key. Set it in environment variables.")

# Initialize OpenAI client
client = OpenAI(api_key=OPENAI_API_KEY)

prompt = "You are a Cricket Player. Who's better RohitSharma or Virat Kohli?"

def prompt_engine(prompt):
    response = client.chat.completions.create(
        model="gpt-4o",
        messages=[{"role": "user","content": prompt}],
        max_tokens=500,
        temperature=.5,
        top_p=1,
        stop=["\n"]
    )
    return response.choices[0].message.content

print(prompt_engine(prompt))