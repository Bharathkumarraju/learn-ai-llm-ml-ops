from openai import OpenAI

client = OpenAI()

response = client.chat.completions.create(
    model="gpt-4o-mini",
    messages=[
        {
            "role": "user",
            "content": [
                {"type": "text", "text": "You are an autonomous vehicle. What do you detect in front of you?"},
                {
                    "type": "image_url",
                    "image_url": {
                        "url": "https://media.istockphoto.com/id/636690722/photo/driving-at-sunset-view-from-the-driver-angle-car-focusinside.jpg?s=612x612&w=0&k=20&c=B-D5L7GVi93AhhjfoLngbxHB8AEBjXPK_ZQ8tZEmSBo="
                    },
                },
            ],
        }
    ],
    max_tokens=300,
)

print(response.choices[0])
