Determining whether an email is spam or not,
Predicting a customers likelihood of repaying a loan,
Detecting fraudulent credit card transactions,
Identifying whether an image contains a cat or a dog

Classification models are used when the task involves categorizing data into predefined labels or classes.

Examples include identifying spam emails, assessing loan repayment likelihood classifying as likely or unlikely to repay,
detecting fraud (fraud or no fraud), and
distinguishing between different objects in images (cat or dog).

Clustering tasks (like grouping customers) and forecasting (predicting sales figures) are not classification tasks but rather clustering and regression, respectively.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

The Text Analytics API provides services for language detection, key phrase extraction, entity recognition, and sentiment analysis


----------------------------------------------------------------------------------------------------------------------------------------------------------------------->


Clustering models are generally evaluated based on metrics that assess the compactness and separability of clusters, such as the average distance to the cluster center.
Combined evaluation can include measures like intra-cluster distance and silhouette score.

RMSE, accuracy, precision, and coefficient of determination are more typical of regression and classification models.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

 The "Explain best model" option aligns with Microsofts Responsible AI principles, particularly transparency.

 By providing explanations for the best-performing model, Azure Machine Learning allows users to understand how the model makes decisions,
 ensuring that AI systems are interpretable, trustworthy, and transparent.

 This is crucial for responsible AI deployment, helping users understand, debug, and trust the AIs outputs.

 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

 Azure Machine Learning Studio offers various types of compute resources including
 Compute Instances for development,
 Compute Clusters for scalable training,
 Kubernetes Clusters for deployment, and
 Attached Compute for using external compute resources.

 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

(Root Mean Squared Error (RMSE),
R-Squared (Coefficient of Determination),
Mean Absolute Error (MAE),
Mean Squared Error (MSE)):

For regression models, Azure ML typically evaluates performance using metrics like
RMSE,
MAE,
MSE, and
R-Squared.

These metrics help determine how closely the predicted values match the actual values.

Metrics like accuracy, precision, and recall are more appropriate for classification tasks rather than regression.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Utterances,
Intents,
Entities
For training language models, especially for natural language processing tasks like conversational AI,
key elements include
utterances (sample phrases that users might say),
intents (the purpose or goal behind an utterance), and
entities (specific information or variables extracted from the utterances).

These components help the model understand and process language inputs effectively.
Vocabulary and general text samples can also be useful depending on the task, but the listed components are essential for creating structured conversational models.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Detecting tumors on X-ray images,
Visual product search,
Face recognition,
Categorizing animal species from photos

Image classification is a technique that identifies the category to which an object in an image belongs

Examples include
detecting medical conditions (e.g., tumors in X-rays),
recognizing and searching products visually,
identifying faces, and
classifying images of animals.

Recognizing text in images typically falls under optical character recognition (OCR), while
entity recognition is a natural language processing (NLP) task related to text analysis, not image classification.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Personal Digital Assistants primarily rely on the Bot Framework,
which allows for natural language processing and interaction with users, integrating various services such as Speech and Text Analytics

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

 Semantic Segmentation is the process of classifying each pixel in an image to associate it with a particular object class.
 This allows for a more detailed understanding of the image, beyond simple object detection or classification.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Recall, also known as sensitivity, is calculated as the
ratio of True Positives (TP) to the sum of True Positives and False Negatives (TP+FN).
It measures how well the model identifies all relevant positive cases

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

 Using all the data for training and then reusing it for validation can lead to overfitting and inaccurate validation results.
 It is crucial to separate the data into training and validation sets to correctly evaluate the models performance


----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Accountability:
Building AI solutions under legal and ethical standards aligns with the Principle of Accountability.
It ensures that AI development and deployment follow best practices and guidelines to prevent misuse or harm.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

0:
In a well-performing regression model,
the residuals (differences between actual and predicted values) should cluster around 0,
indicating that the models predictions are generally accurate.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->


Speech recognition services primarily rely on two key models:

Language Model: It helps in understanding and predicting the structure of language by determining the likelihood of word sequences.
Acoustic Model: It maps audio signals to phonemes, which are the smallest units of sound in speech, aiding in the accurate recognition of spoken words.

Other models like image classification, object detection, and speaker identification are not directly involved in the core speech recognition process.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->


By clearly explaining the capabilities and constraints of the AI system, you ensure transparency.
It allows users to understand how the system works, building trust and ensuring responsible AI use.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->


Clustering is used for grouping similar data points together without predefined labels.
However, predicting whether members favor the service or not is a classification problem, where the goal is to assign data points to specific classes (favor or not favor).
Therefore, classification modeling would be more appropriate.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

formula to calculate model accuracy

Semantic segmentation is used to classify each pixel in an image,
making it possible to identify and distinguish different regions, such as flooded and non-flooded areas, within an image.
This is ideal for tasks that require detailed, pixel-level classification.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

An application scans a document and retrieves page information, lines, and words, along with confidence levels. What API is best suited for this?

Read API:

The "Read" API in Azures Cognitive Services is specifically designed to scan and analyze documents,
extracting text information with details about pages, lines, and words.
It is an advanced Optical Character Recognition (OCR) that can handle complex documents.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Azure Cognitive Face service detects emotions such as happiness (smile), surprise, fear, contempt, and neutrality, among others.
Emotions like "hate" or "sparkle" are not included in the standard set of recognized expressions

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

The Basic Bot template provides a simple bot framework but does not include language understanding capabilities by default.
To create a chatbot that understands user intents and entities,
you should use a template that integrates with Language Understanding Intelligent Service (LUIS) or another natural language processing tool,
such as the "LUIS Bot" template. This would allow the bot to interpret and respond to user inputs more intelligently.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Live speech translation involves
converting spoken language to text,
detecting the language,
translating the text,
and then converting it back to speech in the target language.

These components work together to provide seamless translation.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

When deploying a Custom Vision model, developers need the
Project ID to identify the model,
the Prediction key for authentication, and the
Prediction endpoint to send requests to the service

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

an image containing three dogs sitting near a bicycle, a car, and a tree. How many distinct classes will semantic segmentation identify in this image>?

5: Semantic segmentation identifies and classifies distinct object types in an image. In this example,
the classes are "dog," "bicycle," "car," "tree," and the "background."
Even though there are three dogs, they belong to the same class.
Each type of object is counted as one class, so there are five classes in total.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Clip Art, Photo:

The Analyze Image API can classify images based on their content type, specifically identifying whether an image is a
"Photo" (a real-world picture captured by a camera) or
"Clip Art" (a graphical image, often simplified and stylized).
This helps in understanding the nature of the image and applying relevant processing or filtering techniques.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Feature selection): Feature selection is essential in the pre-processing stage.

It involves selecting the most relevant variables (features) from the dataset that are likely to influence the target outcome,
in this case, predicting the success of the new car model. It helps improve model performance by reducing the complexity of the data.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

- Accuracy: measures the overall correctness of predictions.
- Precision: indicates how many of the predicted positives are true positives.
- Recall: measures how many of the actual positives were correctly identified by the model.

These metrics provide insights into the models ability to detect objects correctly and minimize false positives and negatives.
Other metrics like MSE are more relevant for regression tasks, not classification or object detectio

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Image classification): Image classification involves identifying objects within an image and categorizing them.
For a visual product search, the application needs to recognize and classify images, which is a typical use case for image classification

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Python, R: Azure ML Designer supports the execution of custom scripts primarily in Python and R.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

What metrics does Azure ML use for the evaluation of the Clustering models?

Clustering evaluation metrics often involve measures such as the

average distance of points to their cluster centers and
the number of points assigned to each cluster

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->
Microsoft Inclusive Design Principles for AI solutions
focus on
addressing exclusions,
creating solutions for one and extending them to many, and
learning from diverse perspectives.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Azure Bot Service supports SDKs in
Node.js and
C#
for creating bots

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Logistic regression is a classification technique that predicts the probability of a binary outcome

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Text Analytics Key Phrases API to analyze the following sentence: "Peter met Sara at Microsoft headquarters in Paris." How many key phrase items should you expect in the API response?

Key phrases extracted would likely include "Peter", "Microsoft headquarters", and "Paris", resulting in three key phrases.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Language Understanding (LUIS) is designed for understanding natural language commands, not for extracting key points from documents.
Text Analytics API is more suitable for extracting key phrases.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Anomaly Detection and Object Detection are specific applications or techniques, not key foundational elements.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Featurization refers to the process of preparing data for machine learning, including selecting features, scaling, and normalizing them

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Object detection models provide information such as the
location of the object (bounding box),
the class it belongs to (class name), and the
confidence level of the detection (probability score).

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->
LUIS allows the creation of different types of entities to enhance natural language understanding. These include
machine-learned entities,
list-based entities,
regular expressions (RegEx), and
pattern-any entities

that allow flexible entity extraction.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->
What is a typical machine learning algorithm used when building a Clustering Model?

K-means is a common clustering algorithm used to group data into clusters based on similarities.
Unlike classification models, clustering does not require labeled data.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Classification models in Azure ML often utilize
logistic regression (for binary or multiclass classification) and
decision forest models.

Linear regression and K-means clustering are used for regression and clustering, respectively.


----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Data transformation typically involves preparing the dataset by
selecting important features,
handling missing values,
normalizing data, and
dividing the data into training and testing sets.

Choosing ML algorithms is part of the modeling phase, not data transformation.

Modeling -- Transforming -- Training -- deploying

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Feature selection,
normalization, and
data splitting are preprocessing steps, that is, before the training begins.

Once the data is ready, model training, algorithm selection, and scoring occur during and after the training phase.


----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Natural Language Processing (NLP) is a branch of AI focused on the interaction between computers and human language.

Extracting key phrases from a business insights report involves
processing and analyzing text to identify meaningful phrases, which is a core use case of NLP.

The other options, such as
identifying objects in images or
monitoring sign-in attempts,
pertain to computer vision and anomaly detection, respectively, not NLP.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Natural Language Processing (NLP) focuses on processing and analyzing human language.
Sentiment analysis determines the sentiment (e.g., positive or negative) in text, and
text translation involves understanding and converting text between languages, both of which are NLP tasks.

Extracting handwritten text (OCR) and generating image tags belong to computer vision, while monitoring network traffic is unrelated to NLP.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Transparency in AI involves making the
limitations,
capabilities, and
decision-making processes of AI systems clear to users and stakeholders, enabling informed decisions and trust.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Accountability ensures that AI systems are governed and operated responsibly, adhering to ethical and legal standards.
It emphasizes clear responsibilities and governance frameworks.


----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Managing healthcare data requires
privacy and security to protect sensitive patient information and ensure compliance with regulations.
Accountability ensures that clear governance and responsibilities are in place to handle ethical considerations and data breaches.


----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Accountability involves defining frameworks and governance to ensure AI systems meet legal and ethical requirements, thereby supporting transparency and trust.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Knowledge base systems can extract data from
webpages,
FAQs, and
even images (using OCR).

Audio files may require transcription, and manual entry is less efficient for automation purposes.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

The safety mechanism layer is designed to apply content filtering,
ensuring that inappropriate prompts and responses are suppressed before reaching the user or influencing the systems output

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

System messages in generative AI models allow developers to set constraints, define behavior, and control the tone or style of the AIs responses.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

GPT models are designed for

natural language tasks like generating coherent text and
translating between languages.

Other capabilities, such as image processing, fall outside their primary scope.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Generative AI for images focuses on
creating variations,
editing features, and
generating new images,

while tasks like metadata extraction are not core features of generative AI models.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

DALL-E focuses on image generation, editing, and creating variations. However, describing images (e.g., generating captions)
is typically a task for models trained in natural language processing combined with computer vision, such as CLIP.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

OCR is a technique that converts handwritten or printed text into machine-readable formats,
making it suitable for scanning and verifying signatures in attendance systems.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Object detection identifies objects within an image and provides their bounding box coordinates, allowing precise localization of these objects in the frame.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->

Azure AI Custom Vision allows you to train models tailored to specific image classification tasks using your own datasets, providing flexibility and precision.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------->


----------------------------------------------------------------------------------------------------------------------------------------------------------------------->


----------------------------------------------------------------------------------------------------------------------------------------------------------------------->











