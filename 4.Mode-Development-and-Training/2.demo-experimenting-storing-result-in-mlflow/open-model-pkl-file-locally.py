import pickle

with open("model.pkl", "rb") as file:
    model = pickle.load(file)

print("model name is", model)
print("model params are", model.get_params())


if hasattr(model, "feature_importances_"):
    print("Feature Importances:", model.feature_importances_)


