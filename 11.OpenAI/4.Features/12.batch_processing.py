from openai import OpenAI

# Initialize OpenAI client
client = OpenAI()

# List of prompts
prompts = [
    "Generate a list of 5 business ideas",
    "Explain the theory of relativity in simpler terms",
    "Write a poem about Sachin Tendulkar"
]

# Function to process prompts using OpenAI API
def process_prompts(prompt):
    response = client.chat.completions.create(
        model="gpt-4o",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=600,
        temperature=0.3
    )
    return response.choices[0].message.content

# Store results
results = []

# Process each prompt and collect responses
for prompt in prompts:
    result = process_prompts(prompt)
    results.append(result)

# Print results
for i, result in enumerate(results):
    print(f"Prompt {i +1}: {prompt}")
    print(f"Response {i+1}: {result}")
