from openai import OpenAI
import os

client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY")
)

prompt = "tell me about solar energy?"

def short_story_generator(prompt):

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=100
    )

    return response.choices[0].message.content

print(short_story_generator(prompt))

print("\n")
print("----------------------------------------------------------------------------------------------------------------------------------------------------------------------")

prompt = "Explain how photovoltaic cells in solar panels convert sunlight into electricity.Include details of the photons and electrons movement"
def text_gen(prompt):

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=100
    )

    return response.choices[0].message.content

print(text_gen(prompt))

print("----------------------------------------------------------------------------------------------------------------------------------------------------------------------")

prompt = "Summarize photosynthesis in three sentences using simple language"
def text_gen1(prompt):

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=100
    )

    return response.choices[0].message.content

print(text_gen1(prompt))

print("----------------------------------------------------------------------------------------------------------------------------------------------------------------------")

prompt = "Summarize the article 'the future of renewable energy.'"
def text_gen2(prompt):

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=100
    )

    return response.choices[0].message.content

print(text_gen2(prompt))