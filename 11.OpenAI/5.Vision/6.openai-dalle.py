from openai import OpenAI
client = OpenAI()

def analyze_face(image_url):
    response = client.images.generate(
        model="dall-e-3",
        prompt= f"Analyze the face in this image and describe the person's age, gender, and emotion: {image_url}",
        size = '1024x1024'
    )
    return response.data[0].url

image_url = "https://en.wikipedia.org/wiki/Lion#/media/File:Okonjima_Lioness.jpg"
face_analysis = analyze_face(image_url)
print("Face Analysis:", face_analysis)
