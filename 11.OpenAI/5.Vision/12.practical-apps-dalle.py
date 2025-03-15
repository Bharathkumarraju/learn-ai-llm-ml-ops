from openai import OpenAI
client = OpenAI()


def generate_science_visual():
    response = client.images.generate(
        model="dall-e-3",
        prompt= "An anatomy of an animal cell with a white background.",
        size = '1024x1024'
    )
    return response.data[0].url

image_url = generate_science_visual()
print("Generated Image URL:", image_url)
