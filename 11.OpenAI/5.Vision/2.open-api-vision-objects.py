import os
from openai import OpenAI

# Initialize OpenAI client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))  # Ensure API key is set


def detect_objects(image_url):
    """
    Uses OpenAI's GPT model to analyze an image and describe the detected objects.
    """
    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": f"Detect objects in this image and describe them: {image_url}"}],
        max_tokens=300
    )

    return response.choices[0].message.content


# Example Image URL (Replace with an actual image URL)
image_url = "https://github.com/Bharathkumarraju/learn-ai-llm-ml-ops/blob/main/1.ml-ops-tools/tools-for-mlops.png"

# Run object detection
detected_objects = detect_objects(image_url)

# Print detected objects
print("Detected Objects:", detected_objects)
