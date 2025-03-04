import pandas as pd
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
import bentoml

# Generate synthetic data for house price prediction with 10 features
def generate_data():
    data = {
        'square_footage': [1000, 1500, 1800, 2000, 2300, 2500, 2700, 3000, 3200, 3500],
        'num_rooms': [3, 4, 4, 5, 5, 6, 6, 7, 7, 8],
        'num_bathrooms': [1, 2, 2, 2, 3, 3, 3, 4, 4, 4],
        'house_age': [10, 5, 15, 20, 8, 12, 7, 3, 25, 30],
        'distance_to_city_center': [10, 8, 12, 5, 15, 6, 20, 2, 18, 25],
        'has_garage': [1, 1, 0, 1, 0, 1, 1, 1, 0, 1],
        'has_garden': [1, 1, 1, 0, 1, 0, 0, 1, 1, 0],
        'crime_rate': [0.3, 0.2, 0.5, 0.1, 0.4, 0.3, 0.6, 0.1, 0.7, 0.8],
        'avg_school_rating': [8, 9, 7, 8, 6, 7, 5, 9, 4, 3],
        'country': ['USA', 'USA', 'USA', 'Canada', 'Canada', 'Canada', 'UK', 'UK', 'Germany', 'Germany'],
        'price': [200000, 250000, 280000, 310000, 340000, 370000, 400000, 430000, 460000, 500000]
    }
    return pd.DataFrame(data)

# Load the data
df = generate_data()

# One-hot encode categorical features like 'country'
df = pd.get_dummies(df, columns=['country'], drop_first=True)

# Features and target
X = df.drop(columns=['price'])
y = df['price']

# Split the data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Train the model
model = LinearRegression()
model.fit(X_train, y_train)

# Save the model with BentoML
bentoml.sklearn.save_model("house_price_model_v2", model)
