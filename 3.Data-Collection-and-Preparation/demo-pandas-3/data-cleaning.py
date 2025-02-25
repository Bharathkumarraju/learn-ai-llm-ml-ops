import pandas as pd
import json

# Load the CSV file into a DataFrame
df = pd.read_csv("mock_data.csv")

# Fill missing values in 'age' and 'salary' with the median
df['age'].fillna(df['age'].median(), inplace=True)
df['salary'].fillna(df['salary'].median(), inplace=True)

# Fill missing values in 'department' with 'Unknown'
df['department'].fillna('Unknown', inplace=True)

# Print sample data after handling missing values
print("Sample data after filling missing values:")
print(df.head(), "\n")

# Convert 'profile' from JSON string to dictionary
df['profile'] = df['profile'].apply(lambda x: json.loads(x) if pd.notnull(x) else {})

# Print sample data after converting 'profile' column
print("Sample data after converting 'profile' column:")
print(df[['profile']].head(), "\n")

# Extract 'address', 'phone', and 'email' from 'profile' column
df['address'] = df['profile'].apply(lambda x: x.get('address', None))
df['phone'] = df['profile'].apply(lambda x: x.get('phone', None))
df['email'] = df['profile'].apply(lambda x: x.get('email', None))

# Print sample data after extracting fields from 'profile'
print("Sample data after extracting fields from 'profile':")
print(df[['address', 'phone', 'email']].head(), "\n")

# Drop the original 'profile' column
df.drop(columns=['profile'], inplace=True)

# Print sample data after dropping 'profile' column
print("Sample data after dropping 'profile' column:")
print(df.head(), "\n")

# Save the cleaned DataFrame to a new CSV file
df.to_csv("cleaned_data.csv", index=False)

# Confirm data has been saved
print("Cleaned data saved to 'cleaned_data.csv'")