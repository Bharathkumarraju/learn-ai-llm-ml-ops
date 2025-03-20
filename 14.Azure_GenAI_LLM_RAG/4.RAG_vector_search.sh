Vector search basically is that...

it searches the based on the semantic meaning  of the words...

lets say in your Database for all the cars you used the word called vehicle....but IN normal search technique if you search for cars then you want be able to get anything

but if its in Vector Search it is possible to get the result cause vector search stores the semantic meaning of the words that are stored in multi-dimensional space.

https://weaviate.io/blog/distance-metrics-in-vector-search



Naive RAG:
------------------------------->



user sends both query and pdf docs to GenAI lets say to chatgpt

User ---> Query ---> Embedding Model ---> Vectorize  ---> Vector Store  --------retrieve------->  Augment(prompt, relevantDocs, Query)

