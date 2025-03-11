import os
from openai import OpenAI

# Load OpenAI API key from environment variable
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

if not OPENAI_API_KEY:
    raise ValueError("Missing OpenAI API Key. Set it in environment variables.")

# Initialize OpenAI client
client = OpenAI(api_key=OPENAI_API_KEY)

# Sample tweet for sentiment analysis
tweet = "I loved the new Batman movie!"

# Debug: Print the tweet being analyzed
print("\n Analyzing sentiment for the tweet:\n", tweet)

# Send request to OpenAI API for sentiment classification
response = client.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": "You will be provided with a tweet, and your task is to classify its sentiment as positive, neutral, or negative."},
        {"role": "user", "content": tweet}
    ],
    temperature=0.7,
    max_tokens=64,
    top_p=1
)

# Extract and print sentiment classification
sentiment = response.choices[0].message.content.strip()
print("\n Sentiment Classification:\n", sentiment)
