import os
import numpy as np
import tiktoken
from openai import OpenAI
from dotenv import load_dotenv

# Load environment variables (Make sure you have a .env file with OPENAI_API_KEY)
load_dotenv()

# Initialize OpenAI client
client = OpenAI(
    api_key=os.getenv("OPENAI_API_KEY"),
)

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

print("\n🔹 List of Sentences to Search From:")
for sentence in sentences:
    print(f"- {sentence}")


# Function to tokenize text and print tokens
def tokenize_text(text):
    token_ids = tokenizer.encode(text)  # Convert text to token IDs
    tokens = [tokenizer.decode([tid]) for tid in token_ids]  # Convert token IDs back to words
    print(f"\n🔤 **Tokenizing:** \"{text}\"")
    print(f"🧩 Total Tokens: {len(token_ids)}")
    print(f"📌 Tokens: {tokens}")  # Print tokenized words
    return token_ids


# Function to get embeddings from OpenAI
def get_embedding(text, model="text-embedding-3-small"):
    tokenize_text(text)  # Print tokenization details before generating embeddings
    print(f"\n🧠 Generating embedding for: \"{text}\"")
    embedding = client.embeddings.create(input=[text], model=model).data[0].embedding
    print(f"✅ Full Embedding Vector ({len(embedding)} values):\n{embedding}\n")  # Print all 1536 values
    return embedding


# Generate embeddings for all sentences and store in a dictionary
sentence_vectors = {sentence: get_embedding(sentence) for sentence in sentences}


# Function to calculate cosine similarity
def calculate_cosine_similarity(query_vector, vector):
    similarity = np.dot(query_vector, vector) / (np.linalg.norm(query_vector) * np.linalg.norm(vector))
    return similarity


# Function to find top-N most similar sentences
def get_top_n_similar(query_sentence, n=2):
    print(f"\n🔍 Searching for sentences similar to: \"{query_sentence}\"")

    # Generate embedding for the query
    query_embedding = get_embedding(query_sentence)

    # Calculate similarity scores for each sentence
    similarities = {
        sentence: calculate_cosine_similarity(query_embedding, sentence_vectors[sentence])
        for sentence in sentences
    }

    # Sort sentences based on similarity score (higher is better)
    sorted_similarities = sorted(similarities.items(), key=lambda x: x[1], reverse=True)

    print("\n📊 **Similarity Scores:**")
    for sentence, score in sorted_similarities:
        print(f"- {score:.4f} | {sentence}")

    # Get the top N results
    top_matches = sorted_similarities[:n]

    print("\n🏆 **Top Matches:**")
    for sentence, score in top_matches:
        print(f"✅ {score:.4f} - {sentence}")


# Query Example
query_sentence = "Find the best pizza restaurant close to me."
get_top_n_similar(query_sentence, n=2)
