import os
from openai import OpenAI

# Load API key from environment variable
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

if not OPENAI_API_KEY:
    raise ValueError("Missing OpenAI API Key. Set it in environment variables.")

# Initialize OpenAI client
client = OpenAI(api_key=OPENAI_API_KEY)

# Request an AI-generated image
response = client.images.generate(
    model="dall-e-3",
    prompt="A futuristic city with flying cars and neon lights.",
    size="1792x1024",
    quality="standard",
    n=1
)

# Extract the generated image URL
image_url = response.data[0].url

# Print the image URL
print(image_url)
