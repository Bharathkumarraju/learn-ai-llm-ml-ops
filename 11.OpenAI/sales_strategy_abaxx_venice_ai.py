import requests
import os

# ✅ Load Venice API key from environment
VENICE_API_KEY = os.getenv("VENICE_API_KEY")
if not VENICE_API_KEY:
    raise EnvironmentError("❌ Environment variable VENICE_API_KEY is not set.")

# ✅ Use the correct Venice chat completions endpoint
VENICE_API_URL = "https://api.venice.ai/api/v1/chat/completions"
MODEL = "llama-3.3-70b"

# Define product categories
markets = {
    "LNG Futures": ["North West Europe", "Gulf of Mexico", "North Pacific Asia"],
    "Carbon Futures": ["JREDD+ Carbon Offset", "CORSIA Phase One"],
    "Battery Metals Futures": ["Nickel Singapore", "Lithium Singapore", "Lithium Rotterdam", "Lithium Baltimore"]
}

# User input
print("\n🔍 Available Market Segments:\n")
for idx, mkt in enumerate(markets.keys(), 1):
    print(f"{idx}. {mkt}")

market_choice = int(input("\nSelect a market segment (number): "))
market_segment = list(markets.keys())[market_choice - 1]

print(f"\n📦 Available Products under {market_segment}:\n")
for idx, prod in enumerate(markets[market_segment], 1):
    print(f"{idx}. {prod}")

product_choice = int(input("\nSelect a product (number): "))
product_name = markets[market_segment][product_choice - 1]

audience = input("\n👥 Who is your target audience? (e.g. institutional investors, energy traders): ")
region = input("🌍 Which region are you targeting? (e.g. EU, Asia, Global): ")

# 🚀 Generate the pitch using Venice AI
def generate_sales_pitch(product_name, market_segment, audience, region):
    headers = {
        "Authorization": f"Bearer {VENICE_API_KEY}",
        "Content-Type": "application/json"
    }

    messages = [
        {
            "role": "system",
            "content": "You are a senior sales strategist at Abaxx Exchange. Use markdown formatting. Be structured and persuasive."
        },
        {
            "role": "user",
            "content": f"""
Generate a markdown-formatted sales pitch using the following structure:

# I. Audience Engagement & Value Proposition (The "Why")
- Hook headline
- WIIFM bullets
- Market opportunity

# II. Sales Interaction Structure (The "How")
- Situation / Problem
- Solution overview
- Product positioning
- ESG alignment
- Risk management benefits
- Competitive advantages

# III. Close (The Ask)
- Call to action
- Value stack
- Contact summary

**Strictly markdown output only.**

Product: {product_name}
Market Segment: {market_segment}
Target Audience: {audience}
Target Region: {region}
"""
        }
    ]

    payload = {
        "model": MODEL,
        "messages": messages,
        "temperature": 0.3,
        "max_tokens": 4096
    }

    response = requests.post(VENICE_API_URL, headers=headers, json=payload)
    response.raise_for_status()
    return response.json()["choices"][0]["message"]["content"]

# Save the pitch
pitch_md = generate_sales_pitch(product_name, market_segment, audience, region)

print("\n📝 Final Sales Pitch Markdown:\n")
print(pitch_md)

filename = f"Abaxx_{product_name.replace(' ', '_')}_Sales_Pitch.md"
with open(filename, "w", encoding="utf-8") as f:
    f.write(pitch_md)

print(f"\n✅ Markdown saved as: {filename}")
