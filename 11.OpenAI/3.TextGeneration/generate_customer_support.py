from openai import OpenAI
import os

# Initialize OpenAI client
client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY")
)

def customer_support():
    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": "You are a customer support agent. A customer is asking for a refund because their product was defective. Write a professional response."}],
        max_tokens=100,
        temperature=0.35
    )
    return response.choices[0].message.content

# Generate and print the customer support response
print(customer_support())
