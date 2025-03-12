Text Generation

Prompt Engineering
Practical applications
chat completions

Gnerative Pre-trained Transformer(GPT)
  1. GPT Models predicts the next token.
  2. Pre-trained on large datasets
  3. Uses prompts to generate a wide variety of outputs.



(.venv) bharathkumardasaraju@3.TextGeneration$ python3.12 ./generate_stoty.py
**Whispers of Merlion Park**

In the heart of Singapore, where the skyline brushed the clouds and the sea glistened like scattered diamonds, there stood the iconic Merlion, a mythical creature that blended the strength of a lion and the grace of a fish. Tourists flocked to snap photos, but on this particular evening, it was a local, Mei, who stood quietly in its shadow, contemplating life.

Mei had spent her entire life in Singapore, a vibrant tapestry of cultures woven together by history and progress. The city thrummed with energy—bustling markets in Little India, the aroma of hawker centers, and the serene beauty of Gardens by the Bay. Yet, that day, Mei found herself feeling adrift amidst the vibrant chaos.

As the sun dipped below the horizon, casting hues of orange and purple across the sky, Mei noticed an elderly man seated on a nearby bench, sketching the Merlion with frail strokes. Curiosity piqued,
(.venv) bharathkumardasaraju@3.TextGeneration$





(.venv) bharathkumardasaraju@3.TextGeneration$ python3.12 ./generate_stoty.py
**Title: The Forgotten Orchid**

In the heart of Singapore, where skyscrapers pierced the sky and the hustle of life never ceased, lived an old gardener named Mr. Tan. His small, unassuming garden nestled between two towering buildings was filled with an explosion of colors—bright flowers blooming under the warm sun, but the crown jewel of his collection was the rare and elusive Golden Orchid.

Mr. Tan had inherited the orchid from his mother, who had cultivated it from a seedling passed down through generations. It was said that the Golden Orchid brought prosperity and good fortune to its keeper, and Mr. Tan cherished it like a piece of history. Every morning, he tended to its fragile yellow petals, whispering secrets and dreams as if the flower could listen.

As the years rolled by, Mr. Tan noticed the world around him changing. The garden that had once been a vibrant oasis was slowly being overshadowed by the rapid development of the city. Soon, workers arrived one day with plans

Solar panels work by converting sunlight into electricity through a process called the photovoltaic effect. Here’s a step-by-step explanation of how they function:

1. **Photovoltaic Cells**: Solar panels are made up of many individual solar cells, typically made from silicon. These cells are the fundamental building blocks of solar panels.

2. **Absorption of Sunlight**: When sunlight hits the solar cells, the energy from the light is absorbed by the silicon material. This energy excites electrons in the silicon, giving them enough energy to break free from their atoms.

3. **Generation of Electron Flow**: The solar cells are designed with a positive layer (p-type) and a negative layer (n-type) of silicon. The interaction between these two layers creates an electric field. When the electrons are freed by the absorbed sunlight, they are pushed towards the n-type layer, creating a flow of electric current.

4. **Direct Current (DC) Generation**: The movement of these electrons generates
(.venv) bharathkumardasaraju@3.TextGeneration$


top-P = Top of proable tokens


temperature = Controls randomness and creativity, lower values are more determistic
top_p = top probability values(Top-P sampling)
N: number of iterations
stop: when the model should stop generating


Tokenization uses technique called Byte Pair Encoding(BPE) , it tokenizes the texts,

