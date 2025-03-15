from openai import OpenAI
client = OpenAI()

def generate_heart():
    response = client.images.generate(
        model="dall-e-3",
        prompt="A 3D illustration of the human heart showing the flow of blood through the chambers.",
        size='1024x1024'
    )
    return response.data[0].url

image_url = generate_heart()
print("Generated Image URL:", image_url)
