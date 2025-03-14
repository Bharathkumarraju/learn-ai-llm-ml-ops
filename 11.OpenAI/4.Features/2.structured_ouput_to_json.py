import os
import json
from openai import OpenAI

# Initialize OpenAI client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

def generate_property_details():
    """Generates property listing details in JSON format using OpenAI."""
    prompt = "Generate a JSON object for a property listing with the following details: \
              address, price, number_of_bedrooms, number_of_bathrooms."

    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=100,
        temperature=0.5
    )

    # Parse the JSON response
    property_details = response.choices[0].message.content
    try:
        property_details_json = json.loads(property_details)  # Convert string to JSON
    except json.JSONDecodeError:
        property_details_json = {"error": "Invalid JSON format received"}

    return property_details_json

# Print the generated property details
print(json.dumps(generate_property_details(), indent=4))
