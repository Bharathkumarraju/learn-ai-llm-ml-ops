from openai import OpenAI
client = OpenAI()

def generate_product_test_visual():
    response = client.images.generate(
        model="dall-e-3",
        prompt= "A luxury wooden table and a chair with some gadgets.",
        size = '1024x1024'
    )
    return response.data[0].url

image_url = generate_product_test_visual()
print("Generated Image URL:", image_url)
