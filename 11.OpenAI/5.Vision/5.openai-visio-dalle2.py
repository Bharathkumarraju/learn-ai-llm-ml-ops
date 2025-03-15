
from openai import OpenAI

client =  OpenAI()

def moderate_image(image_url):
    response = client.chat.completions.create(
        model="gpt-4o",
        messages=[{"role": "user", "content":f"Moderate this image and check if it is safe: {image_url}"}],
        max_tokens=100
    )
    return response.choices[0].message.content

image_url = "https://en.wikipedia.org/wiki/Brad_Pitt#/media/File:Brad_Pitt_Cannes_2012.jpg"
moderation_status = moderate_image(image_url)
print("Moderation Status:", moderation_status)
