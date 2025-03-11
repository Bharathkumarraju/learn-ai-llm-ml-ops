import os
from openai import OpenAI

# Load OpenAI API key from environment variable
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

if not OPENAI_API_KEY:
    raise ValueError("Missing OpenAI API Key. Set it in environment variables.")

# Initialize OpenAI client
client = OpenAI(api_key=OPENAI_API_KEY)

# Investment comparison prompt
prompt = "Analyze the pros and cons of VOO vs. TGRO"

# Debug: Print the request being sent
print("\n Sending the following request to OpenAI API: ", prompt)

# Send request to OpenAI API for comparison analysis
response = client.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "user", "content": prompt}
    ],
    temperature=0.8,
    max_tokens=600,
    top_p=1
)

# Extract and print the AI-generated comparison
analysis = response.choices[0].message.content.strip()
print("\n Investment Analysis:\n", analysis)
