import os
from openai import OpenAI

# Load OpenAI API key from environment variable
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

if not OPENAI_API_KEY:
    raise ValueError("Missing OpenAI API Key. Set it in environment variables.")

# Initialize OpenAI client
client = OpenAI(api_key=OPENAI_API_KEY)

# Sample code to explain
code_snippet = """
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n - 1)
"""

# Generate explanation for the given code
response = client.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": "You will be provided with a piece of code, and your task is to explain it in a concise way."},
        {"role": "user", "content": f"Explain the following Python code:\n{code_snippet}"}
    ],
    temperature=0.7,
    max_tokens=64,
    top_p=1
)

# Print the AI-generated explanation
print(response.choices[0].message.content)
