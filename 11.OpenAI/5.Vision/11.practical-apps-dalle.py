from openai import OpenAI
client = OpenAI()

def generate_cert_visual():
    response = client.images.generate(
        model="dall-e-3",
        prompt= "AI certifications both in AWS Cloud and Micorsoft AZURE with colorful  neon highlights on a misty mountain trail as background with space ",
        size = '1024x1024'
    )
    return response.data[0].url

image_url = generate_cert_visual()
print("Generated Image URL:", image_url)
