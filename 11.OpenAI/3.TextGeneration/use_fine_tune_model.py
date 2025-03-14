from openai import OpenAI

client = OpenAI()

# Fine-tuned model ID
fine_tuned_model_id = "ft:gpt-4o-2024-08-06:bharaths::BAnLnYzs"

# Generate a response using the fine-tuned model
response = client.chat.completions.create(
    model=fine_tuned_model_id,
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "Explain recursion in simple terms."}
    ],
    max_tokens=100,
    temperature=0.3
)

print(response.choices[0].message.content)
