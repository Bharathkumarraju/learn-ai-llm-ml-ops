import os
from openai import OpenAI

# Read API key from environment
api_key = os.getenv("OPENAI_API_KEY")

# Initialize OpenAI client
client = OpenAI(api_key=api_key)

# Define the query
query = "Help me answer this technical question about my new snowblower."


def short_story_generator(query):
    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[
            {
                "role": "user",
                "content": f"You are a customer support assistant. A user asks: '{query}'. Respond helpfully."
            }
        ],
        max_tokens=100,
        temperature=0,
        n=1,
        stop=None,
    )

    return response.choices[0].message.content


# Generate and print the response
print(short_story_generator(query))
