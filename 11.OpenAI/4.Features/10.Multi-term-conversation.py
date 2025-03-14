import os
from openai import OpenAI

# Set up OpenAI client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))  # Ensure API key is set

# Multi-turn conversation with context tracking
conversation_history = []  # Stores the entire chat history

def generate_response(user_input):
    """
    Generates a response from OpenAI while maintaining conversation context.
    """
    global conversation_history

    # Append the user input to conversation history
    conversation_history.append(f"User: {user_input}")

    # Concatenate conversation history to maintain context
    prompt = "\n".join(conversation_history) + "\nAI:"

    try:
        response = client.chat.completions.create(
            model="gpt-4",
            messages=[{"role": "user", "content": prompt}],
            max_tokens=100,
            temperature=0.5
        )

        # Extract AI response correctly
        ai_response = response.choices[0].message.content

        # Append AI response to conversation history
        conversation_history.append(f"AI: {ai_response}")

        return ai_response

    except Exception as e:
        return f"OpenAI API Error: {e}"


# Example multi-turn conversation
print(generate_response("Hi, I need help with my order."))
print(generate_response("I didn't receive my package."))
print(generate_response("It's been delayed by 2 days. What can I do?"))
