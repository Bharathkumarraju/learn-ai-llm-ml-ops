from openai import OpenAI

client = OpenAI()

completion = client.chat.completions.create(
    model="your-fine-tuned-model-id",
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {
            "role": "user",
            "content": "Write a haiku about recursion in programming."
        }
    ]
)

print(completion.choices[0].message)
