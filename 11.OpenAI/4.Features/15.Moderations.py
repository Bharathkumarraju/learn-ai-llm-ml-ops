from openai import OpenAI

# Initialize OpenAI client
client = OpenAI()

# Sample input to check moderation
prompt = "hi sexy fuck you!"

def ethical_moderation(prompt):
    """Checks if the input violates OpenAI's moderation policies."""
    response = client.moderations.create(
        model="text-moderation-latest",  # OpenAI's latest moderation model
        input=prompt
    )
    return response.results[0]  # Extract first result

# Run moderation check
moderation_result = ethical_moderation(prompt)

# Display results clearly
print("\n=== Moderation Result ===")
print(f"Flagged: {moderation_result.flagged}")
print("Categories flagged:")

# Handle NoneType values safely
for category, score in moderation_result.category_scores.__dict__.items():
    if score is not None and score > 0.05:  # Check for None before comparison
        print(f"- {category}: {score:.4f}")
