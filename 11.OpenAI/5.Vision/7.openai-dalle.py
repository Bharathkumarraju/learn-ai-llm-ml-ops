from openai import OpenAI

client = OpenAI()

def image_to_image_translation(input_image_url, transformation_description):
    response = client.images.generate(
        model="dall-e-3",
        prompt= f"Transform the image at {input_image_url} by {transformation_description}",
        size = '1024x1024'
    )
    return response.data[0].url

input_image_url = "https://en.wikipedia.org/wiki/Lion#/media/File:Okonjima_Lioness.jpg"
transformation_description = "convert this sketch into a photorealistic image."
output_image_url = image_to_image_translation(input_image_url, transformation_description)
print("Translated Image URL:", output_image_url)
