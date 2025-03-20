Tokens and Vector Embeddings

(.venv) bharathkumardasaraju@RAG$ python3.12 ./4.tokens_vector_embeddings.py

🔹 List of Sentences to Search From:
- Best pizza places nearby.
- Popular breakfast spots in JB.
- Top-rated seafood restaurants in Singapore.
- Cheap hotels near the beach.
- Recipes for quick pasta dishes.
- Is PizzaHut Restaurant Near Me.

🔤 **Tokenizing:** "Best pizza places nearby."
🧩 Total Tokens: 5
📌 Tokens: ['Best', ' pizza', ' places', ' nearby', '.']

🧠 Generating embedding for: "Best pizza places nearby."
✅ Embedding generated (first 5 values): [-0.08649007230997086, -0.029158486053347588, 0.021387368440628052, -0.007155250757932663, -0.016818758100271225] ...


🔤 **Tokenizing:** "Popular breakfast spots in JB."
🧩 Total Tokens: 6
📌 Tokens: ['Popular', ' breakfast', ' spots', ' in', ' JB', '.']

🧠 Generating embedding for: "Popular breakfast spots in JB."
✅ Embedding generated (first 5 values): [-0.04536508023738861, -0.009655652567744255, 0.005105708725750446, -0.018480712547898293, -0.008263186551630497] ...


🔤 **Tokenizing:** "Top-rated seafood restaurants in Singapore."
🧩 Total Tokens: 7
📌 Tokens: ['Top', '-rated', ' seafood', ' restaurants', ' in', ' Singapore', '.']

🧠 Generating embedding for: "Top-rated seafood restaurants in Singapore."
✅ Embedding generated (first 5 values): [-0.024301711469888687, 0.015591994859278202, -0.008004389703273773, 0.012343217618763447, 0.06390687823295593] ...


🔤 **Tokenizing:** "Cheap hotels near the beach."
🧩 Total Tokens: 6
📌 Tokens: ['Cheap', ' hotels', ' near', ' the', ' beach', '.']

🧠 Generating embedding for: "Cheap hotels near the beach."
✅ Embedding generated (first 5 values): [-0.04145326092839241, 0.026635831221938133, 0.029279422014951706, -0.00951359048485756, -0.021059857681393623] ...


🔤 **Tokenizing:** "Recipes for quick pasta dishes."
🧩 Total Tokens: 6
📌 Tokens: ['Recipes', ' for', ' quick', ' pasta', ' dishes', '.']

🧠 Generating embedding for: "Recipes for quick pasta dishes."
✅ Embedding generated (first 5 values): [-0.053842585533857346, -0.03515124320983887, -0.029104748740792274, -0.05926523730158806, -0.006262439768761396] ...


🔤 **Tokenizing:** "Is PizzaHut Restaurant Near Me."
🧩 Total Tokens: 8
📌 Tokens: ['Is', ' Pizza', 'H', 'ut', ' Restaurant', ' Near', ' Me', '.']

🧠 Generating embedding for: "Is PizzaHut Restaurant Near Me."
✅ Embedding generated (first 5 values): [-0.09511896222829819, -0.026932721957564354, 0.0025031305849552155, -3.803021172643639e-05, 0.008369842544198036] ...


🔍 Searching for sentences similar to: "Find the best pizza restaurant close to me."

🔤 **Tokenizing:** "Find the best pizza restaurant close to me."
🧩 Total Tokens: 9
📌 Tokens: ['Find', ' the', ' best', ' pizza', ' restaurant', ' close', ' to', ' me', '.']

🧠 Generating embedding for: "Find the best pizza restaurant close to me."
✅ Embedding generated (first 5 values): [-0.06838679313659668, -0.009952893480658531, -0.012798307463526726, -0.0091355936601758, -0.006635262630879879] ...


📊 **Similarity Scores:**
- 0.7056 | Best pizza places nearby.
- 0.6609 | Is PizzaHut Restaurant Near Me.
- 0.3373 | Cheap hotels near the beach.
- 0.3342 | Top-rated seafood restaurants in Singapore.
- 0.2989 | Popular breakfast spots in JB.
- 0.2592 | Recipes for quick pasta dishes.

🏆 **Top Matches:**
✅ 0.7056 - Best pizza places nearby.
✅ 0.6609 - Is PizzaHut Restaurant Near Me.

📊 **Visualizing Sentence Embeddings in 3D Space**
2025-03-21 06:20:55.106 Python[62806:4335110] +[IMKClient subclass]: chose IMKClient_Modern
2025-03-21 06:20:55.106 Python[62806:4335110] +[IMKInputSession subclass]: chose IMKInputSession_Modern



