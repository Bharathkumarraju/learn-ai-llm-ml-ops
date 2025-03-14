from openai import OpenAI

client = OpenAI()

prompt="hi sexy"

def ethical_moderation(prompt):
    response = client.moderations.create(
        model="omni-moderation-latest",
        input=prompt
    )
    return response.results[0]

moderation_result = ethical_moderation(prompt)

print("Moderation result",  moderation_result)