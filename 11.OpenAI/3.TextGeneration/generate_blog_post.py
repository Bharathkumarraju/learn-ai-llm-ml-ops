from openai import OpenAI
import os

# Initialize OpenAI client
client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY")
)

def generate_blog_intro():
    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": "Write a blog post introduction about the benefits of remote work for both companies and employees."}],
        max_tokens=150,
        temperature=0.7
    )
    return response.choices[0].message.content

# Generate and print the blog introduction
print(generate_blog_intro())
