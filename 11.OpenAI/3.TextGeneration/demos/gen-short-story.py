from openai import OpenAI
import os

client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY"),
    base_url=os.environ.get("OPENAI_API_BASE")
)

def generate_short_story(prompt):
    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=100,
        temperature=0.7
    )
    return response.choices[0].message.content

prompts = [
                "Write a short story about a young knight who finds a mysterious map.",
                "Tell a short story about an astronaut stranded on a distant planet.",
                "Generate a short story about a talking cat who solves mysteries."]

for prompt in prompts:
    print(f"Prompt: {prompt}")
    story = generate_short_story(prompt)
    print(f"Generated Story:\n{story}\n")

