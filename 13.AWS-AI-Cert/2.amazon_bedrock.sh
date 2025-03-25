GPT-4o is a foundational Model

1. Amazon Bedrock Foundational Models(FM)
2. Amazon Bedrock Fine-Tuning Model
3. Amazon Bedrock RAG & Knowledge Base
4. Amazon Bedrock GuardRails
5. Amazon Bedrock Agents
6. Amazon Bedrock - cloudwatch integration

Amazon AIStylist - https://aistylist.awsplayer.com/


Generative AI for images from text Diffusion Model(Stable Diffusion)



1. Amazon Bedrock Foundational Models(FM)
-------------------------------------------------
RAG, LLM Agents etc..



Automated Metrics to Evaluate the Foundational Model(FM):
---------------------------------------------------------------------->

ROUGE: Recall-Oriented Understudy for Gisting Evaluation   - this is for evaluating the summarization and machine translation systems.
   ROUGE-N  - Matching the number of n-grams between reference text and generated text.
   ROUGE-L  - Longest common subseuence between reference and generated text.

BLEU: Bilingual Evaluation Understudy  -- Evaluate the quality of generated text, especially for translations.

BERTScore: Bidirectional Encoder Representations from Transformers.....
        Evaluates the Semantic simialrity between generated text.

  Uses BERTScore to compare the contextualized embeddings of both texts and computes the cosine similarity between them.

Perplexity: How well the model predicts the next token(Lower is better)

Business Metrics:
--------------------------------->
user satisifaction
Cross-domain performance
average revenue per user


Amazon Bedrock - RAG and Knowledge Base
----------------------------------------------------->

RAG - Retrieval Augmented Generation
RAG allows a Foundation Model to reference a data source outside of its training data without being fine-tuned.

So we have a knowledge base and its being built and managed by Amazon Bedrock.






