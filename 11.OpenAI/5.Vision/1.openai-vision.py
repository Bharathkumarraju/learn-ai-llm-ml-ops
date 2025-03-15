# vision

from openai import OpenAI

# Initialize OpenAI client
client = OpenAI()  # Ensure API key is set

def caption_image(image_url):
    """
    Generates a caption for a given image using OpenAI's GPT-4 model.
    """
    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": f"Describe the following image: {image_url}"}],
        max_tokens=300
    )
    return response.choices[0].message.content

# Example image URL (Replace with an actual image URL)
image_url = "https://github.com/Bharathkumarraju/learn-ai-llm-ml-ops/blob/main/1.ml-ops-tools/tools-for-mlops.png"

# Get the caption
caption = caption_image(image_url)

# Print the generated caption
print("Image Caption:", caption)
