from openai import OpenAI

client = OpenAI()

# function that can generate the visuals
def generate_picture():
    response = client.images.generate(
        model="dall-e-3",
        prompt="Playing golf on Mars with aliens",
        size="1024x1024"
    )
    return response.data[0].url

image_url = generate_picture()

print("Generated Image URL:", image_url)
