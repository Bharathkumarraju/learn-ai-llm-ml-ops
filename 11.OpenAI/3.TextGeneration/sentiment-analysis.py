from openai import OpenAI
import os

# Initialize OpenAI client
client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY")
)

def analyze_sentiment(text):
    response = client.chat.completions.create(
        model="gpt-4",
        messages=[
            {"role": "system",
             "content": "You are a sentiment analysis assistant that classifies text as Positive, Neutral, or Negative."},
            {"role": "user", "content": f"Analyze the sentiment of the following text: '{text}'"}
        ],
        max_tokens=100,
        temperature=0.3
    )

    sentiment = response.choices[0].message.content
    print(f"Input: {text}")
    print(f"Sentiment: {sentiment}")


# Example usage:
text1 = "I love the new design of the product. It's amazing!"
text2 = "The product works well, but the customer service was awful."

# Run sentiment analysis on both texts
analyze_sentiment(text1)
analyze_sentiment(text2)
