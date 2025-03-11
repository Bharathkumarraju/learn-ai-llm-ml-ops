import os
from openai import OpenAI
from gtts import gTTS

# Load API key from environment variable
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

if not OPENAI_API_KEY:
    raise ValueError("Missing OpenAI API Key. Set it in environment variables.")

client = OpenAI(api_key=OPENAI_API_KEY)

prompt = "Tell me a story about a Penguin who learns to fly"

def get_openai_response(prompt):
    response = client.chat.completions.create(
        model="gpt-3.5-turbo",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=100
    )
    return response.choices[0].message.content.strip()

def text_to_speech(text, lang='en'):
    tts = gTTS(text=text, lang=lang, slow=False)
    tts.save("tts_example.mp3")
    os.system("afplay tts_example.mp3")

# Get AI-generated story
story = get_openai_response(prompt)

# Convert the story to speech
text_to_speech(story)

print("Story Generated and Played Successfully!")
