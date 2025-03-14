from openai import OpenAI

client = OpenAI()

audio_file = open("./tts_example.mp3", "rb")

transcribe = client.audio.transcriptions.create(
    model="whisper-1",
    file=audio_file
)

print(transcribe.text)
