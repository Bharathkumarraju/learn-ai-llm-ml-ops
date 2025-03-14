from openai import OpenAI

client  = OpenAI()

# Create something that can accept ingredients
ingredients = []

while True:
    ingredient = input("Enter ingredients. Type done once complete:")
    if ingredient.lower() == "done":
        break

    ingredients.append(ingredient)

# Create a function that uses the model and brings in the ingredients

def recipe_gen(ingredients):
    messages = []
    for ingredient in ingredients:
        messages.append({"role": "user", "content": ingredient})

    messages.extend([
        {"role": "system", "content": "JSON Format"},
        {"role": "assistant", "content": "You are a high-end chef, Generate a recipe based on the given ingredients. Must be exported in JSON Format"}]
    )
    response = client.chat.completions.create(
        model="gpt-4o",
        messages= messages,
        max_tokens=300,
        temperature=0.9
    )

    return response.choices[0].message.content


print(recipe_gen(ingredients))

