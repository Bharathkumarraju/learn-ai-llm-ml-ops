from openai import OpenAI
import datetime

client = OpenAI()

# Step 1: Define product categories
markets = {
    "LNG Futures": ["North West Europe", "Gulf of Mexico", "North Pacific Asia"],
    "Carbon Futures": ["JREDD+ Carbon Offset", "CORSIA Phase One"],
    "Battery Metals Futures": ["Nickel Singapore", "Lithium Singapore", "Lithium Rotterdam", "Lithium Baltimore"]
}

# Step 2: User selects market + product
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

# Step 3: Generate sales pitch using GPT-4o
def generate_sales_pitch(product_name, market_segment, audience, region):
    messages = [
        {
            "role": "system",
            "content": """You are a senior sales strategist at Abaxx Exchange.
Use the 'Abaxx Sales & Persuasion Markdown Framework'.
Generate a pitch with the following structure:

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

**Output strictly in markdown format**.
"""
        },
        {
            "role": "user",
            "content": f"""Product: {product_name}
Market Segment: {market_segment}
Target Audience: {audience}
Target Region: {region}"""
        }
    ]

    response = client.chat.completions.create(
        model="gpt-4o",
        messages=messages,
        max_tokens=4096,
        temperature=0.3
    )

    return response.choices[0].message.content.strip()

# Step 4: Print and save to Markdown file
pitch_md = generate_sales_pitch(product_name, market_segment, audience, region)

print("\n📝 Final Sales Pitch Markdown:\n")
print(pitch_md)

# Save to .md file
filename = f"Abaxx_{product_name.replace(' ', '_')}_Sales_Pitch.md"
with open(filename, "w", encoding="utf-8") as f:
    f.write(pitch_md)

print(f"\n✅ Markdown saved as: {filename}")
