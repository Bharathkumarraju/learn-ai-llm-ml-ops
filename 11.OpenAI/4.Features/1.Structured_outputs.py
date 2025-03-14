from pydantic import BaseModel
from openai import OpenAI
import os

# Initialize OpenAI client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

# Define the data model for the event
class CalendarEvent(BaseModel):
    name: str
    date: str
    participants: list[str]

# Define the message prompt
messages = [
    {"role": "system", "content": "Extract the event information."},
    {"role": "user", "content": "Alice and Bob are going to a science fair on Friday."}
]

# Call OpenAI's model to extract structured event information
completion = client.beta.chat.completions.parse(
    model="gpt-4o-2024-08-06",
    messages=messages,
    response_format=CalendarEvent,
)

# Get the parsed event object
event = completion.choices[0].message.parsed

# Print the extracted event details
print("Extracted Event Details:")
print(f"Name: {event.name}")
print(f"Date: {event.date}")
print(f"Participants: {', '.join(event.participants)}")
