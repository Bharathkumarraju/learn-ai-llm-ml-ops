from openai import OpenAI
import os

# Initialize OpenAI client
client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY")
)

def explain_code(code_snippet):
    """
    This function sends a code snippet to OpenAI's GPT-4 model
    and returns an explanation of the given code.
    """
    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": f"Explain the following code: {code_snippet}"}],
        max_tokens=500,
        temperature=0.3
    )
    return response.choices[0].message.content

# Example code snippet to be explained
code_snippet = """
def factorial(n):
    if n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n - 1)
"""

# Generate and print the explanation for the code snippet
print(explain_code(code_snippet))
