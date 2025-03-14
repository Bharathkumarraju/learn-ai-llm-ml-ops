import os
import json
from openai import OpenAI

# Initialize OpenAI client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

# Accept ingredients from user input
ingredients = []

while True:
    ingredient = input("Enter ingredient (Type 'done' to finish): ")
    if ingredient.lower() == "done":
        break
    ingredients.append(ingredient)

# Function to generate recipe in JSON format
def recipe_gen(ingredients):
    """Generates a recipe based on provided ingredients and ensures the response is in JSON format."""
    messages = [
        {"role": "system", "content": "You are a professional chef. Generate a recipe using the provided ingredients strictly in JSON format without any extra text."},
        {"role": "user", "content": json.dumps({"ingredients": ingredients})}
    ]

    response = client.chat.completions.create(
        model="gpt-4o",
        messages=messages,
        max_tokens=500,
        temperature=0.9,
        response_format={"type": "json_object"}  # Corrected format
    )

    return response.choices[0].message.content

# Generate the recipe
recipe_json = recipe_gen(ingredients)

# Convert string response to valid JSON
try:
    recipe_data = json.loads(recipe_json)  # Convert string to dictionary
except json.JSONDecodeError:
    print("Error: The response is not valid JSON.")
    recipe_data = {"error": "Invalid JSON response from API."}

# Save recipe to a JSON file
json_filename = "recipe_output.json"
with open(json_filename, "w", encoding="utf-8") as file:
    json.dump(recipe_data, file, indent=4)

print(f"Recipe saved to {json_filename}")
