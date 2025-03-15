from openai import OpenAI

client = OpenAI()

def photo_gen():
    response = client.images.generate(
        model="dall-e-3",
        prompt= "Create a cartoon style photo of a Singaporean person trying to become a YouTuber..Republic of singapore!",
        size = '1024x1024'
    )
    return response.data[0].url

print(photo_gen())
