import os
from gtts import gTTS
from openai import OpenAI

# Initialize OpenAI client
client = OpenAI()

# Define the prompt
prompt = "Tell me a story about a brave knight that loves basketball"

# Function to convert text to speech
def text_to_speech(text, lang='en'):
    tts = gTTS(text=text, lang=lang, slow=False)
    tts.save("tts_example.mp3")
    os.system("afplay tts_example.mp3")

# Function to generate text using OpenAI's API
def generate_text(prompt):
    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[{"role": "user", "content": prompt}],
        temperature=0.8,
        max_tokens=150
    )
    return response.choices[0].message.content

# Function to generate text and convert it to speech
def gen_and_speak(prompt):
    text = generate_text(prompt)
    print("Generated Text:\n", text)
    text_to_speech(text)

# Execute the function
print(gen_and_speak(prompt))
