import os
from openai import OpenAI

# Load OpenAI API key from environment variable
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

if not OPENAI_API_KEY:
    raise ValueError("Missing OpenAI API Key. Set it in environment variables.")

# Initialize OpenAI client
client = OpenAI(api_key=OPENAI_API_KEY)

# Sample unstructured medical history data
unstructured_data = """
Patient: John Doe
Age: 45
Diagnosis: Type 2 Diabetes, Hypertension
Medications: Metformin, Lisinopril
Last Visit: 2024-03-01
Next Appointment: 2024-06-15
Doctor: Dr. Smith
"""

# Generate structured CSV response
response = client.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": "You will be provided with unstructured medical data, and your task is to convert it into a structured CSV format."},
        {"role": "user", "content": f"Here is the patient's medical history:\n{unstructured_data}"}
    ],
    temperature=0.7,
    max_tokens=150,
    top_p=1
)

# Extract and print the AI-generated CSV data
csv_output = response.choices[0].message.content
print("Generated CSV Data:\n")
print(csv_output)

# Save the structured data to a CSV file
csv_filename = "patient_medical_history.csv"
with open(csv_filename, "w", encoding="utf-8") as file:
    file.write(csv_output)

print(f"\nCSV file saved as: {csv_filename}")
