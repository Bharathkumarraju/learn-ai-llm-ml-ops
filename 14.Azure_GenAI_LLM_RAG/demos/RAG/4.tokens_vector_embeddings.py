import os
import numpy as np
import matplotlib.pyplot as plt
import tiktoken
from sklearn.decomposition import PCA
from openai import OpenAI
from dotenv import load_dotenv

# Load API Key
load_dotenv()
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

# Tokenizer for OpenAI models
tokenizer = tiktoken.encoding_for_model("text-embedding-3-small")

# Sample sentences
sentences = [
    "Best pizza places nearby.",
    "Popular breakfast spots in JB.",
    "Top-rated seafood restaurants in Singapore.",
    "Cheap hotels near the beach.",
    "Recipes for quick pasta dishes.",
    "Is PizzaHut Restaurant Near Me.",
]

print("\n List of Sentences to Search From:")
for sentence in sentences:
    print(f"- {sentence}")


# Function to tokenize text
def tokenize_text(text):
    token_ids = tokenizer.encode(text)  # Get token IDs
    tokens = [tokenizer.decode([tid]) for tid in token_ids]  # Convert IDs to readable tokens
    print(f"\n **Tokenizing:** \"{text}\"")
    print(f" Total Tokens: {len(token_ids)}")
    print(f" Tokens: {tokens}")
    return token_ids


# Function to get embeddings
def get_embedding(text, model="text-embedding-3-small"):
    tokenize_text(text)  # Print tokens before generating embeddings
    print(f"\n Generating embedding for: \"{text}\"")
    embedding = client.embeddings.create(input=[text], model=model).data[0].embedding
    print(f" Embedding generated (first 5 values): {embedding[:5]} ...\n")  # Print only first 5 values
    return embedding


# Generate embeddings for all sentences
sentence_vectors = {sentence: get_embedding(sentence) for sentence in sentences}


# Function to calculate cosine similarity
def cosine_similarity(vec1, vec2):
    return np.dot(vec1, vec2) / (np.linalg.norm(vec1) * np.linalg.norm(vec2))


# Function to find top-N most similar sentences
def get_top_n_similar(query_sentence, n=2):
    print(f"\n🔍 Searching for sentences similar to: \"{query_sentence}\"")

    # Generate embedding for the query
    query_embedding = get_embedding(query_sentence)

    # Calculate similarity scores for each sentence
    similarities = {
        sentence: cosine_similarity(query_embedding, sentence_vectors[sentence])
        for sentence in sentences
    }

    # Sort by similarity score (higher is better)
    sorted_similarities = sorted(similarities.items(), key=lambda x: x[1], reverse=True)

    print("\n **Similarity Scores:**")
    for sentence, score in sorted_similarities:
        print(f"- {score:.4f} | {sentence}")

    # Get the top N matches
    print("\n **Top Matches:**")
    for sentence, score in sorted_similarities[:n]:
        print(f" {score:.4f} - {sentence}")


# Query Example
query_sentence = "Find the best pizza restaurant close to me."
get_top_n_similar(query_sentence, n=2)


# 🔹 3D Visualization of Embeddings using PCA
def visualize_embeddings_3d():
    print("\n **Visualizing Sentence Embeddings in 3D Space**")

    # Convert embeddings to NumPy array
    sentence_embeddings = np.array(list(sentence_vectors.values()))

    # Reduce 1536D → 3D using PCA
    pca = PCA(n_components=3)
    reduced_embeddings_3d = pca.fit_transform(sentence_embeddings)

    # Plot in 3D
    fig = plt.figure(figsize=(10, 7))
    ax = fig.add_subplot(111, projection='3d')

    for i, sentence in enumerate(sentences):
        x, y, z = reduced_embeddings_3d[i]
        ax.scatter(x, y, z, label=sentence, s=100)
        ax.text(x, y, z, sentence, fontsize=10)

    ax.set_title("Sentence Embeddings Visualized in 3D using PCA")
    ax.set_xlabel("PC 1")
    ax.set_ylabel("PC 2")
    ax.set_zlabel("PC 3")
    plt.legend()
    plt.show()


# Call the visualization function
visualize_embeddings_3d()
