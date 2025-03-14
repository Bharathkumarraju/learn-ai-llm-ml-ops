import os
import requests
from openai import OpenAI

# Set up OpenAI client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))  # Ensure API key is set

# Function to get stock data and generate AI-based analysis
def get_stock_analysis(stock_symbol):
    """Fetch stock price from an API and generate an AI-based stock analysis."""

    # Replace with your actual API key
    FINANCIAL_API_KEY = os.getenv("FINANCIAL_API_KEY")

    # API Endpoint for real-time stock data
    url = f"https://financialmodelingprep.com/api/v3/quote/{stock_symbol}?apikey={FINANCIAL_API_KEY}"

    try:
        # Fetch stock price data
        response = requests.get(url)
        response.raise_for_status()  # Raise error if API request fails
        stock_data = response.json()

        if not stock_data:
            return f"Error: No data found for stock symbol {stock_symbol}"

        stock_price = stock_data[0]['price']

    except requests.exceptions.RequestException as e:
        return f"API Request Error: {e}"

    # Generate AI-based stock analysis
    try:
        ai_response = client.chat.completions.create(
            model="gpt-4",
            messages=[
                {"role": "user",
                 "content": f"The current stock price of {stock_symbol} is {stock_price}. Provide an analysis."}
            ],
            max_tokens=500,
            temperature=0.7
        )

        # Correct way to access response
        return ai_response.choices[0].message.content.strip()

    except Exception as e:  # Handle OpenAI API errors
        return f"OpenAI API Error: {e}"


# Example usage: Fetch stock analysis for Apple (AAPL)
if __name__ == "__main__":
    stock_symbol = "AAPL"  # Example stock symbol
    analysis = get_stock_analysis(stock_symbol)
    print(f"Stock Analysis for {stock_symbol}:\n{analysis}")
