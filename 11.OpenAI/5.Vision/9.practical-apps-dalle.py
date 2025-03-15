from openai import OpenAI

client = OpenAI()

def generate_ad_visual():
    response = client.images.generate(
        model="dall-e-3",
        prompt= "A futuristic running shoe with neon highlights on a misty mountain trail.",
        size = '1024x1024'
    )
    return response.data[0].url

image_url = generate_ad_visual()
print("Generated Image URL:", image_url)
