import pandas as pd
import json


# Load the CSV file into a DataFrame
df = pd.read_csv("cleaned_data.csv")


# Add a new column 'address_length' that calculates the length of the address
df['address_length'] = df['address'].apply(lambda x: len(str(x)))

# Print sample data after adding 'address_length' column
print("Sample data after adding 'address_length' column:")
print(df[['address', 'address_length']].head(), "\n")

# Define the bins and labels
bins = [0, 50000, 70000, 100000]
labels = ['low', 'medium', 'high']

# Create a new column 'salary_category'
df['salary_category'] = pd.cut(df['salary'], bins=bins, labels=labels, include_lowest=True)

# Print sample data after adding 'salary_category' column
print("Sample data after adding 'salary_category' column:")
print(df[['salary', 'salary_category']].head(), "\n")

# Group by 'department' and calculate average salary and age
summary_report = df.groupby('department').agg({
    'salary': 'mean',
    'age': 'mean'
}).reset_index()

# Rename columns for clarity
summary_report.columns = ['Department', 'Average Salary', 'Average Age']

# Print the summary report
print("Summary report of average salary and age by department:")
print(summary_report, "\n")

# Save the final transformed DataFrame to a new CSV file
df.to_csv("transformed_data.csv", index=False)

# Confirm data has been saved
print("Final transformed data saved to 'transformed_data.csv'")