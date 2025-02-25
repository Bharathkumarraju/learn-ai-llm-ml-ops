import pandas as pd

# Load the CSV file into a DataFrame
df = pd.read_csv("mock_data.csv")

# Display the first few rows of the DataFrame
df.head()

# Get a summary of the DataFrame
df.info()

# Check for missing values
df.isnull().sum()

# View statistical summary for numeric columns
df.describe(include='all')

# Check unique values in the 'department' column
df['department'].unique()