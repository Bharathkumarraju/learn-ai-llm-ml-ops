import openai

def visual_question_answering(image_url, question):
    response = openai.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": f"Here is an image: {image_url}. Question: {question}"}],
        max_tokens=100
    )
    return response.choices[0].message.content

image_url = "https://github.com/Bharathkumarraju/learn-ai-llm-ml-ops/blob/main/1.ml-ops-tools/tools-for-mlops.png"
question = "What is this object?"
answer = visual_question_answering(image_url, question)
print("Answer:", answer)
