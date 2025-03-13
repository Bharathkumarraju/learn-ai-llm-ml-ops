from openai import OpenAI
import os

# Initialize OpenAI client
client = OpenAI(api_key=os.environ.get("OPENAI_API_KEY"))

def aspect_based_sentiment(text, aspects):
    aspect_analysis = {}
    for aspect in aspects:
        print(f"\n Analyzing sentiment for aspect: '{aspect}'...")
        response = client.chat.completions.create(
            model="gpt-4",
            messages=[
                {"role": "system", "content": "You are an assistant that analyzes sentiment for specific aspects of a given text."},
                {"role": "user", "content": f"Analyze the sentiment for '{aspect}' in the following text: '{text}'. Only return 'Positive', 'Neutral', or 'Negative'."}
            ],
            max_tokens=10,
            temperature=0.3
        )
        # Debug print to see full response structure
        print(f"️ Raw Response for '{aspect}': {response}")
        # Extract sentiment response correctly
        sentiment = response.choices[0].message.content.strip()

        # Debug print to verify extracted sentiment
        print(f" Extracted Sentiment for '{aspect}': {sentiment}\n")
        aspect_analysis[aspect] = sentiment # store the result
        print("now the dictionary is this \n")
        print(aspect_analysis)
        print(aspect_analysis.items())
        print("\n")

    return aspect_analysis

# Example text
text = "The phone design is sleek and modern, but performance is lagging at times."
aspects = ["design", "performance"]

# Store the function output
sentiment_results = aspect_based_sentiment(text, aspects)

# Iterate over results and print
for aspect, sentiment in sentiment_results.items():
    print(f"Aspect: {aspect}, Sentiment: {sentiment}")
