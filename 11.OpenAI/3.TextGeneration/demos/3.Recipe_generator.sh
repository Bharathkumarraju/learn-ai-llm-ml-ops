(.venv) bharathkumardasaraju@demos$ python3.12 ./recipe_generator.py
Enter ingredients. Type done once complete:apples
Enter ingredients. Type done once complete:sugar
Enter ingredients. Type done once complete:grapes
Enter ingredients. Type done once complete:chicken
Enter ingredients. Type done once complete:done
Traceback (most recent call last):
  File "/Users/bharathkumardasaraju/external/learn-ml-ops/11.OpenAI/3.TextGeneration/demos/./recipe_generator.py", line 36, in <module>
    print(recipe_gen(ingredients))
          ^^^^^^^^^^^^^^^^^^^^^^^
  File "/Users/bharathkumardasaraju/external/learn-ml-ops/11.OpenAI/3.TextGeneration/demos/./recipe_generator.py", line 22, in recipe_gen
    messages.create(
    ^^^^^^^^^^^^^^^
AttributeError: 'list' object has no attribute 'create'
(.venv) bharathkumardasaraju@demos$




(.venv) bharathkumardasaraju@demos$ python3.12 ./recipe_generator.py
Enter ingredients. Type done once complete:grapes
Enter ingredients. Type done once complete:milk
Enter ingredients. Type done once complete:beef
Enter ingredients. Type done once complete:chocolate
Enter ingredients. Type done once complete:sugar
Enter ingredients. Type done once complete:done
Here is a delicious recipe that incorporates grapes, milk, beef, chocolate, and sugar:

**Chocolate-Glazed Beef with Grape Reduction**

**Ingredients:**
- 1 lb beef tenderloin or steak
- Salt and pepper to taste
- 2 tbsp olive oil
- 1 cup red seedless grapes, halved
- 1/2 cup red wine
- 1 cup beef stock
- 1/4 cup milk
- 2 oz dark chocolate, chopped
- 2 tbsp sugar
- Fresh thyme or rosemary for garnish (optional)

**Instructions:**

1. **Prepare the Beef:**
   - Season the beef tenderloin with salt and pepper.
   - In a large skillet, heat olive oil over medium-high heat. Sear the beef on all sides until browned, about 3-4 minutes per side. Transfer the beef to a plate and cover with foil to keep warm.

2. **Make the Grape Reduction:**
   - In the same skillet, add the grape halves and cook for 2-3 minutes until they begin to soften.
   - Pour in the red wine and let it simmer for about 5 minutes until the liquid reduces by half.
   - Add the beef stock and continue to simmer for another 5 minutes. The reduction should thicken slightly.

3. **Create the Chocolate Glaze:**
   - In a small saucepan, heat the milk over low heat.
   - Add the chopped dark
(.venv) bharathkumardasaraju@demos$


