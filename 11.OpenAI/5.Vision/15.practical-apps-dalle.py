from openai import OpenAI
client = OpenAI()

def generate_concept_home_visual():
    response = client.images.generate(
        model="dall-e-3",
        prompt="A luxury 3D architecture of a modern house with a glass facade and roof top garden",
        size='1024x1024'
    )
    return response.data[0].url

image_url = generate_concept_home_visual()
print("Generated Image URL:", image_url)
