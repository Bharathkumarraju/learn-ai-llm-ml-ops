import mlflow

mlflow.set_experiment(experiment_id="0")

@mlflow.trace
def foo(a):
    return a + bar(a)

# Various attributes can be passed to the decorator
# to modify the information contained in the span
@mlflow.trace(name="custom_name", attributes={"key": "value"})
def bar(b):
    return b + 1

# Invoking the traced function will cause a trace to be logged
foo(1)