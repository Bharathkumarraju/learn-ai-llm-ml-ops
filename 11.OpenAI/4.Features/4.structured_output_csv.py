import os
import csv
from openai import OpenAI

# Initialize OpenAI client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))


def generate_sales_report():
    """Generates a sales report in CSV format using OpenAI."""
    prompt = "Generate a sales report in CSV format with the following columns:product_name, units_sold, revenue The data should contain at least 5 sample entries."

    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=300,
        temperature=0.5
    )

    return response.choices[0].message.content


# Generate sales report
csv_data = generate_sales_report()

# Save CSV content to a file
csv_filename = "sales_report.csv"

with open(csv_filename, "w", newline="") as file:
    file.write(csv_data)

print(f"Sales report saved to {csv_filename}")
