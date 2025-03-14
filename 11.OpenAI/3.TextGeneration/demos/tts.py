from openai import OpenAI
import os
from gtts import gTTS

# Initialize OpenAI client
client = OpenAI(
    api_key=os.environ.get("OPENAI_API_KEY"),
    base_url=os.environ.get("OPENAI_API_BASE")
)

# Function to generate text using OpenAI
def generate_text(prompt):
    response = client.chat.completions.create(
        model="gpt-3.5-turbo",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=100,
        temperature=0.7
    )
    return response.choices[0].message.content

# Function to convert text to speech
def text_to_speech(text, lang='en'):
    tts = gTTS(text=text, lang=lang, slow=False)
    tts.save("tts_example.mp3")
#    os.system("afplay tts_example.mp3")  # Use "mpg321 tts_example.mp3" for Linux

# Function to integrate text generation and speech synthesis
def gen_and_speak(prompt):
    text = generate_text(prompt)
    print(f"Generated Text:\n{text}")
    text_to_speech(text)

# Define prompt
prompt = "Tell me a short story about a brave knight."

# Call the function
gen_and_speak(prompt)
