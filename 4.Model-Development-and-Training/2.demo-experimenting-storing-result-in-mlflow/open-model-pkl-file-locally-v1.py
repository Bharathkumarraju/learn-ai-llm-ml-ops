import pickle
import json

with open("model.pkl", "rb") as file:
    model = pickle.load(file)

print("\n📌 Model Name:", model.__class__.__name__)
print("\n🔧 Model Parameters:")
print(json.dumps(model.get_params(), indent=4))

if hasattr(model, "feature_importances_"):
    print("\n📊 Feature Importances:")
    for idx, importance in enumerate(model.feature_importances_):
        print(f"  Feature {idx}: {importance:.4f}")
