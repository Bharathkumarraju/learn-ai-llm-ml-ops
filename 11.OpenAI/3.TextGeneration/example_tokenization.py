from openai import OpenAI
import os

# Initialize OpenAI client
client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY")
)

# Define the prompt
prompt = "Is Ronaldo better than Messi?"

def generate_text(prompt):
    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=100,
        temperature=0.5,
        top_p=0.3
    )

    return response.choices[0].message.content

# Generate and print the response token by token
response_text = generate_text(prompt)
for i, token in enumerate(response_text):
    print(f"Token: {token}")
