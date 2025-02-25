import pandas as pd
import json

df = pd.read_csv('mock_data.csv')

# print("print head \n",df.head())

# print("csv info")
# df.info()

# Check for missing values
print("print null values \n",df.isnull().sum())

# Check for the Statistical summary of numeric columns

print("\n  Statistical Summary \n", df.describe(include='all'))

# Check info about columns
print("\n csv info \n")
df.info()
print("\n")

# Unique values in the 'department' column
print("\n unique departments", df['department'].unique())
print("")


#### DATA Cleaning Activity ####

print("STEP 1: Handling numerical missing values")
print("\n Records with missing age before filling:")
print(df[df['age'].isnull()][['age', 'salary', 'department']])

print("\n REcords with missing salary before filling:")
print(df[df['salary'].isnull()][['age','salary','department']])

# filling missing age and missing salary with median values
age_median = df['age'].median()
salary_median = df['salary'].median()

print(f"\nMedian values used:")
print(f"Age Median: {age_median}")
print(f"Salary Median: {salary_median}")

# So fill median age and median salary for the missing age and salary values
df['age'] = df['age'].fillna(age_median)
df['salary'] = df['salary'].fillna(salary_median)
print("")
# print(f"Age after filling: {df['age']}")
# print(f"salry after filling: {df['salary']}")

# intial data overview
print("Initial data overview:")
print(df.head(), "\n")
print("initial missing values in each column: ")
print(df.isnull().sum(), "\n")


# Step 2: Handle Missing values in 'department'
print("\n STEP2: Handling categorical missing values")
print("\nRecords with missing department before filling:")
print(df[df['department'].isnull()][['age', 'salary', 'department']])

# Fill Department with `Unknown`
df['department'] = df['department'].fillna('Unknown')
print(f"Print departments after filling: {df['department']}")

print(f"missing values after filling age, salary and department: {df.isnull().sum()}")

# Print profile
print(f"\n get profile values from csv: \n {df['profile']}")
# Convert pofile JSON strings to dictionaries
df['profile'] =  df['profile'].apply(lambda x: json.loads(x) if pd.notnull(x) else {})

# Extract specific fields in profile json as separate columns
df['address'] = df['profile'].apply(lambda x: x.get('address', None))
df['phone'] = df['profile'].apply(lambda x: x.get('phone', None))
df['email'] = df['profile'].apply(lambda x: x.get('email', None))

print(f"\n print transformed values:\n {df.info()}")
print("\n recrods after exteraction i.e. address phone and email")
print(df[['address', 'phone', 'email']])

# Cleanup by dropping the profile column
print("\n Column Cleanup")
print("\n Columns before dropping profile")
print(df.columns.to_list())

df.drop(columns=['profile'], inplace=True)
print(df.columns.to_list())

df.to_csv("cleaned_data.csv", index=False)
print("\n Cleaned data is saved to 'cleaned_data.csv")


# Load the new CSV file into a DataFrame
df = pd.read_csv("cleaned_data.csv")

# Add a new column 'address_length' that calculates the length of the address
df['address_length'] = df['address'].apply(lambda x: len(str(x)))

# print sample data after adding 'address_length' column
print("Sample data after adding 'address_length' column:")
print(df[['address', 'address_length']].head(), "\n")

# Define the bins and labels
bins = [0, 50000, 70000, 100000]
labels = ['low', 'medium', 'high']

# Create a new column 'salary_Category'
df['salary_category'] = pd.cut(df['salary'], bins=bins, labels=labels, include_lowest=True)

# Print sample data after adding salary_category
print("\n sample data with the salary_category column:")
print(df[['salary', 'salary_category']].head(), "\n")

# Group by 'department' and calculate average salary and age
summary_report = df.groupby('department').agg({
    'salary': 'mean',
    'age': 'mean'
}).reset_index()

# rename columns
summary_report.columns = ['Department', 'Average Salary', 'Average age']

print("Summary report of average salary and average age by department")
print(summary_report, "\n")

# save the transformed data frame
df.to_csv("transformed_data.csv", index=False)

