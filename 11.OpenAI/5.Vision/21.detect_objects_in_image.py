from openai import OpenAI

client = OpenAI()

response = client.chat.completions.create(
    model="gpt-4o-mini",
    messages=[
        {
            "role": "user",
            "content": [
                {"type": "text", "text": "Examine this medical image. Explain what the injury is."},
                {
                    "type": "image_url",
                    "image_url": {
                        "url": "https://media02.stockfood.com/largepreviews/MzU50Dg1NTQx/11609211-Broken-arm-X-ray.jpg",
                    },
                },
            ],
        }
    ],
    max_tokens=300,
)

print(response.choices[0])
