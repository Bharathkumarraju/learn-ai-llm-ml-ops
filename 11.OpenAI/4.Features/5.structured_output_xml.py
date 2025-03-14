import os
from openai import OpenAI

# Initialize OpenAI client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))


def generate_xml():
    """Generates an XML configuration file for a database connection."""
    prompt = "Generate an XML configuration file for a database connection with the following details: database_name,username,password,host,port and Ensure the XML format is structured correctly with a root tag <database_config>"

    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": prompt}],
        max_tokens=200,
        temperature=0.5
    )

    return response.choices[0].message.content


# Generate XML configuration
xml_content = generate_xml()

# Save XML content to a file
xml_filename = "db_config.xml"

with open(xml_filename, "w") as file:
    file.write(xml_content)

print(f"Database configuration saved to {xml_filename}")
