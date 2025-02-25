small to medium datasets - Data Transformation..

Efficiency and simplicity is important.

Tasks like
1. Cleanig sales data for mid-sized retail company.
2. Preparing survey results for research project.

pandas and polaris python libraries

pandas - powerful python library
  1. Handling missing values - df.dropna(inplace=True) and df.fillna(0, inplace=True)
  2. Removing Duplicates - df.drop_duplicates(inplace=True)
  3. Data Type Conversion - df['age'] = df['age'].astype(int)
  4. Key Transformation Tasks and Functions  - filter(), sort_values() functions etc...df_filtered = df.filter(['name', 'age']) and  df_sorted = df.sort_values(by='age')
  5. Aggregation - groupby(), agg() .. df_grouped =  df.groupby('region').agg({'sales': 'sum'})
  6. Merging and Joining - df_merged = pd.merge(df1, df2, on='id')

Pandas -
  1. Data Cleaning  -- Raw data -> Removing missing values -> convert data types
  2. Data Transformation --  Data Transformation -> Group by region -> Aggregate Sales -> Sales Summary


Polaris - fast python library




