from openai import OpenAI
import os

# Initialize OpenAI client
client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY")
)

def summarize_article(article_text):
    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": f"Summarize the following article about blockchain technology: {article_text}"}],
        max_tokens=100,
        temperature=0.3
    )
    return response.choices[0].message.content

# Example article text
article_text = "Blockchain technology is a decentralized digital ledger that records transactions across many computers to ensure security and transparency."

# Generate and print the summary
print(summarize_article(article_text))
