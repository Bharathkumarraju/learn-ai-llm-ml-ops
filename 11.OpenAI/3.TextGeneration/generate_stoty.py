from openai import OpenAI
import os

client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY")
)

prompt = "write a short story about Singapore?"

def short_story_generator(prompt):

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=200,
        temperature=1,
        n=3,
        stop=None
    )

    return response.choices[0].message.content

print(short_story_generator(prompt))


prompt = "How solar panel works?"
def text_gen(prompt):

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=200,
        temperature=0.5,
        top_p=0.3
    )

    return response.choices[0].message.content

print(text_gen(prompt))
