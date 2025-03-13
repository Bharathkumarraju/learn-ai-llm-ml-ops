import os
import pandas as pd
from openai import OpenAI

# Read API key from environment
api_key = os.getenv("OPENAI_API_KEY")

# Initialize OpenAI client
client = OpenAI(api_key=api_key)

# Load dataset from CSV
csv_file_path = "./fitness.csv"
df = pd.read_csv(csv_file_path)

# List to store fitness goals
goals = []

# Collect user-defined health goals
while True:
    goal = input("What are your health goals? Enter 'done' when completed: ")
    if goal.lower() == "done":
        break
    goals.append(goal)

# Function to analyze goals with reference to the dataset
def trainer(goals, df):
    messages = []

    # Add user-defined goals as messages
    for goal in goals:
        messages.append({"role": "user", "content": goal})

    # Add system and assistant prompts
    messages.extend([
        {"role": "system", "content": "Direct. Point form."},
        {"role": "assistant", "content": f"You are a health expert. The person you are responding to is an accountant. "
                                         f"Be technical and specifi to their role. Reference this data: \n\n{df.to_string()} and provide solutions to the ${goals}"}
    ])

    # Make OpenAI API call
    response = client.chat.completions.create(
        model="gpt-4o",
        messages=messages,
        temperature=0.8
    )

    return response.choices[0].message.content

# Run the trainer function and print AI's recommendations
ai_response = trainer(goals, df)
print("\n AI Recommendations:\n")
print(ai_response)
