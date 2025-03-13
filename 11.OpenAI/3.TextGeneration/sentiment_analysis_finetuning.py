import json
import time
import os
from openai import OpenAI

# Set your OpenAI API key
api_key = os.environ.get("OPENAI_API_KEY")

# Initialize OpenAI client
client = OpenAI(api_key=api_key)

# Step 1: Prepare fine-tuning dataset
training_data = [
    {"messages": [
        {"role": "user", "content": "I love the new design of the product. It's amazing! and excellent"},
        {"role": "assistant", "content": "Very Positive"}
    ]},
    {"messages": [
        {"role": "user", "content": "The product works well, but the customer service was awful."},
        {"role": "assistant", "content": "Mixed (Positive for product, Negative for customer service)"}
    ]},
    {"messages": [
        {"role": "user", "content": "The product quality is not good and also shipping was slow too!"},
        {"role": "assistant", "content": "Negative"}
    ]},
    {"messages": [
        {"role": "user", "content": "The product is a huge mess and very bad!"},
        {"role": "assistant", "content": "Very Negative"}
    ]}
]

# Save dataset to JSONL file
dataset_filename = "mydata.jsonl"
with open(dataset_filename, "w") as f:
    for entry in training_data:
        f.write(json.dumps(entry) + "\n")

print(f"Dataset saved as {dataset_filename}")

# Step 2: Upload dataset to OpenAI
file_response = client.files.create(
    file=open(dataset_filename, "rb"),
    purpose="fine-tune"
)
file_id = file_response.id
print(f"Uploaded dataset. File ID: {file_id}")

# Step 3: Start fine-tuning job
fine_tune_response = client.fine_tuning.jobs.create(
    training_file=file_id,
    model="gpt-3.5-turbo"  # Choose base model for fine-tuning
)
fine_tune_job_id = fine_tune_response.id
print(f"Started fine-tuning job. Job ID: {fine_tune_job_id}")

# Step 4: Monitor fine-tuning progress
print("Monitoring fine-tuning job...")
while True:
    fine_tune_status = client.fine_tuning.jobs.retrieve(fine_tune_job_id)
    status = fine_tune_status.status
    print(f"Fine-tuning status: {status}")

    if status in ["succeeded", "failed", "cancelled"]:
        break
    time.sleep(30)  # Wait before checking again

if status == "succeeded":
    fine_tuned_model = fine_tune_status.fine_tuned_model
    print(f"Fine-tuning completed successfully! Model ID: {fine_tuned_model}")
else:
    print(f"Fine-tuning failed with status: {status}")
    exit()

# Step 5: Use the fine-tuned model for sentiment analysis
def analyze_sentiment_fine_tuned(text):
    response = client.chat.completions.create(
        model=fine_tuned_model,
        messages=[
            {"role": "system",
             "content": "You are a sentiment analysis assistant that classifies text as 'Very Positive', 'Positive', 'Neutral', 'Negative' or 'Very Negative'."},
            {"role": "user", "content": f"Analyze the sentiment of the following text: '{text}'"}
        ],
        max_tokens=100,
        temperature=0.3
    )
    sentiment = response.choices[0].message.content
    print(f"Input: {text}")
    print(f"Sentiment: {sentiment}")

# Example usage:
texts = [
    "I love the new design of the product. It's amazing! and excellent",
    "The product works well, but the customer service was awful.",
    "The product quality is not good and also shipping was slow too!",
    "The product is a huge mess and very bad!"
]

for text in texts:
    analyze_sentiment_fine_tuned(text)
