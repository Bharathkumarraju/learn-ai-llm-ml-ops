import os
from openai import OpenAI

# Set up OpenAI client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))  # Ensure API key is set

# Step 1: Generate an outline
outline_response = client.chat.completions.create(
    model="gpt-4",
    messages=[{"role": "user", "content": "Generate an outline for an article on AI in healthcare"}],
    max_tokens=100
)

# Extract the generated outline
outline = outline_response.choices[0].message.content
print("Generated Outline:\n", outline)

# Step 2: Generate content for each section
section_responses = []
for section in outline.split("\n"):
    if section.strip():  # Ignore empty lines
        section_response = client.chat.completions.create(
            model="gpt-4",
            messages=[{"role": "user", "content": f"Write a detailed paragraph on {section}"}],
            max_tokens=150
        )

        # Extract and store the generated content for each section
        section_responses.append(section_response.choices[0].message.content)

# Combine sections into the full article
article = "\n\n".join(section_responses)
print("\nFinal Generated Article:\n", article)

# Save the generated article to a text file
with open("ai_healthcare_article.txt", "w", encoding="utf-8") as file:
    file.write(article)

print("\nArticle saved to ai_healthcare_article.txt")
