from openai import OpenAI
client = OpenAI()

# Initialize OpenAI client
client = OpenAI()

# Upload training file
file_response = client.files.create(
    file=open("file-abc123.jsonl", "rb"),
    purpose="fine-tune"
)

print(f"Uploaded File ID: {file_response.id}")

fine_tune_response = client.fine_tuning.jobs.create(
    training_file=file_response.id,
    model="gpt-4o-2024-08-06",  # Use an available fine-tunable model
    hyperparameters={
        "n_epochs": 2  # Adjust the number of epochs as needed
    }
)

print(f"Fine-Tuning Job ID: {fine_tune_response.id}")
