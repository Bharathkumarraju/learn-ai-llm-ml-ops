from openai import OpenAI
client = OpenAI()

def generate_game_char_visual():
    response = client.images.generate(
        model="dall-e-3",
        prompt= "A Penguin on the computer, vaporwave.",
        size = '1024x1024'
    )
    return response.data[0].url

image_url = generate_game_char_visual()
print("Generated Image URL:", image_url)
