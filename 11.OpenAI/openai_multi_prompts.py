import os
from openai import OpenAI

# Load OpenAI API key from environment variable
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

if not OPENAI_API_KEY:
    raise ValueError("Missing OpenAI API Key. Set it in environment variables.")

# Initialize OpenAI client
client = OpenAI(api_key=OPENAI_API_KEY)

# List of prompts to process
prompts = [
    "Tell me a story about a brave knight",
    "Generate a list of 5 business ideas",
    "Explain the theory of relativity in simple terms",
    "Write a poem about basketball"
]

# Function to process a single prompt
def process_prompt(prompt):
    response = client.chat.completions.create(
        model="gpt-4o",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=150,
        temperature=0.7
    )
    return response.choices[0].message.content

# Process each prompt individually
for prompt in prompts:
    print(f"Prompt: {prompt}")
    response_text = process_prompt(prompt)
    print(f"Response:\n{response_text}\n")
    print("=" * 80)  # Separator for readability
