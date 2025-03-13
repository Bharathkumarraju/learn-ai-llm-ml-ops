from openai import OpenAI
import os

client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY")
)

prompt = "who is best ronaldo or messi?"

def chat_comp(prompt):

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt},
                  {"role": "system", "content": "You are a super hero!"}
                  ],
        max_tokens=250
    )

    return response.choices[0].message.content

print(chat_comp(prompt))
