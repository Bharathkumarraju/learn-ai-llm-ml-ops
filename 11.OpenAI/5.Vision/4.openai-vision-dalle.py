import openai

def generate_image_from_sketch(image_url, text_description):
    response = openai.images.generate(
        model="dall-e-3",
        prompt= f"Use the following image as a base: {image_url}. Add these details: {text_description}",
        size = '1024x1024'
    )
    return response.data[0].url

image_url = "https://en.wikipedia.org/wiki/Sydney#/media/File:Sydney_Opera_House_and_Harbour_Bridge_Dusk_(2)_2019-06-21.jpg"
description = "Add a bright blue sky and detailed buildings in the background."
generated_image_url = generate_image_from_sketch(image_url, description)
print("Generated Image URL:", generated_image_url)
