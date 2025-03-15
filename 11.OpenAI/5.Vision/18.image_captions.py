from openai import OpenAI

client = OpenAI()

# image url
image_url = "https://assets-prd.ignimgs.com/2022/06/10/netflix-one-piece-1654901410673.jpg"


# function that can generate captions
def generate_captions(image_url):
    response = client.chat.completions.create(
        model="gpt-4o",
        messages=[{"role": "user", "content": [{"type": "text", "text": "What is this image?"},
                                               {"type": "image_url", "image_url": {"url": image_url}}]}],
        max_tokens=125
    )

    return response.choices[0].message.content


print(generate_captions(image_url))
