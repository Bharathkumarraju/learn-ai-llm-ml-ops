import os
from openai import OpenAI

# Initialize OpenAI client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))


def generate_markdown_doc():
    """Generates API documentation in Markdown format using OpenAI."""
    prompt = "Generate markdown-formatted documentation for an API with the following sections: Overview, Authentication, Endpoints, Error Handling."

    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=300,
        temperature=0.5
    )

    return response.choices[0].message.content


# Generate markdown documentation and save to a file
markdown_doc = generate_markdown_doc()

with open("api_documentation.md", "w") as file:
    file.write(markdown_doc)

print("Markdown documentation saved to api_documentation.md")
