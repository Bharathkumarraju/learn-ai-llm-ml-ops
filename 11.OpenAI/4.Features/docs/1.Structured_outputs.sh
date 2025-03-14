output in certain formats like json, csv, xml, txt etc

(.venv) bharathkumardasaraju@4.Features$ python3.12 ./1.Structured_outputs.py
Extracted Event Details:
Name: Science Fair
Date: Friday
Participants: Alice, Bob
(.venv) bharathkumardasaraju@4.Features$


(.venv) bharathkumardasaraju@4.Features$ python3.12 ./2.structured_ouput_to_json.py
{
    "property_listing": {
        "address": "123 Main St, Anytown, USA",
        "price": 350000,
        "number_of_bedrooms": 3,
        "number_of_bathrooms": 2
    }
}
(.venv) bharathkumardasaraju@4.Features$




(.venv) bharathkumardasaraju@4.Features$ python3.12 ./2.structured_ouput_to_json.py
{
    "property_listing": {
        "address": "123 Main St, Anytown, USA",
        "price": 350000,
        "number_of_bedrooms": 3,
        "number_of_bathrooms": 2
    }
}
(.venv) bharathkumardasaraju@4.Features$ python3.12 ./3.structured_output_markdown.py
Markdown documentation saved to api_documentation.md
(.venv) bharathkumardasaraju@4.Features$ python3.12 ./4.structured_output_csv.py
Sales report saved to sales_report.csv
(.venv) bharathkumardasaraju@4.Features$



(.venv) bharathkumardasaraju@4.Features$ python3.12 ./5.structured_output_xml.py
Database configuration saved to db_config.xml
(.venv) bharathkumardasaraju@4.Features$



(.venv) bharathkumardasaraju@4.Features$ python3.12 ./6.recipe_gen_json.py
Enter ingredients. Type done once complete:sugar
Enter ingredients. Type done once complete:milk
Enter ingredients. Type done once complete:coffee powder
Enter ingredients. Type done once complete:done
Certainly! Based on the ingredients provided—sugar, milk, and coffee powder—here's a simple coffee recipe in JSON format:

```json
{
    "recipe": {
        "name": "Classic Coffee",
        "ingredients": [
            {
                "item": "sugar",
                "quantity": "1 teaspoon"
            },
            {
                "item": "milk",
                "quantity": "1 cup"
            },
            {
                "item": "coffee powder",
                "quantity": "2 teaspoons"
            }
        ],
        "instructions": [
            "Heat the milk in a small pot over medium heat until its hot but not boiling.",
            "In a mug, add the coffee powder and sugar.",
            "Pour a small amount of hot milk into the mug and stir to dissolve the coffee powder and sugar.",
            "Pour the remaining milk into the mug and stir well.",
            "Serve hot and enjoy your classic coffee!"
        ],
        "serving_size": "1 cup",
        "prep_time": "5 minutes",
        "cook_time": "5 minutes",
        "total_time": "10 minutes"
    }
}
```

This JSON format provides a structured recipe for making a classic cup of coffee using sugar, milk, and coffee powder. Enjoy your brew!
(.venv) bharathkumardasaraju@4.Features$





(.venv) bharathkumardasaraju@4.Features$ python3.12 ./7.recipe_gen2.py
Enter ingredient (Type 'done' to finish): milk
Enter ingredient (Type 'done' to finish): sugar
Enter ingredient (Type 'done' to finish): done
Recipe saved to recipe_output.json
(.venv) bharathkumardasaraju@4.Features$



