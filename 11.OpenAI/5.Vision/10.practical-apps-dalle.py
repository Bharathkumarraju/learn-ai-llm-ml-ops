from openai import OpenAI
client = OpenAI()

def generate_insta_visual():
    response = client.images.generate(
        model="dall-e-3",
        prompt= "A luxury makeup palette displayed on a marble countertop with soft lighting.",
        size = '1024x1024'
    )
    return response.data[0].url

image_url = generate_insta_visual()
print("Generated Image URL:", image_url)
