%pip install azure-ai-translation-text
Collecting azure-ai-translation-text
  Downloading azure_ai_translation_text-1.0.1-py3-none-any.whl.metadata (18 kB)
Requirement already satisfied: isodate>=0.6.1 in /anaconda/envs/azureml_py310_sdkv2/lib/python3.10/site-packages (from azure-ai-translation-text) (0.6.1)
Requirement already satisfied: azure-core>=1.30.0 in /anaconda/envs/azureml_py310_sdkv2/lib/python3.10/site-packages (from azure-ai-translation-text) (1.31.0)
Requirement already satisfied: typing-extensions>=4.6.0 in /anaconda/envs/azureml_py310_sdkv2/lib/python3.10/site-packages (from azure-ai-translation-text) (4.12.2)
Requirement already satisfied: requests>=2.21.0 in /anaconda/envs/azureml_py310_sdkv2/lib/python3.10/site-packages (from azure-core>=1.30.0->azure-ai-translation-text) (2.32.3)
Requirement already satisfied: six>=1.11.0 in /anaconda/envs/azureml_py310_sdkv2/lib/python3.10/site-packages (from azure-core>=1.30.0->azure-ai-translation-text) (1.16.0)
Requirement already satisfied: charset-normalizer<4,>=2 in /anaconda/envs/azureml_py310_sdkv2/lib/python3.10/site-packages (from requests>=2.21.0->azure-core>=1.30.0->azure-ai-translation-text) (3.3.2)
Requirement already satisfied: idna<4,>=2.5 in /anaconda/envs/azureml_py310_sdkv2/lib/python3.10/site-packages (from requests>=2.21.0->azure-core>=1.30.0->azure-ai-translation-text) (3.10)
Requirement already satisfied: urllib3<3,>=1.21.1 in /anaconda/envs/azureml_py310_sdkv2/lib/python3.10/site-packages (from requests>=2.21.0->azure-core>=1.30.0->azure-ai-translation-text) (2.2.3)
Requirement already satisfied: certifi>=2017.4.17 in /anaconda/envs/azureml_py310_sdkv2/lib/python3.10/site-packages (from requests>=2.21.0->azure-core>=1.30.0->azure-ai-translation-text) (2024.8.30)
Downloading azure_ai_translation_text-1.0.1-py3-none-any.whl (87 kB)
Installing collected packages: azure-ai-translation-text
Successfully installed azure-ai-translation-text-1.0.1
Note: you may need to restart the kernel to use updated packages



from azure.ai.translation.text import TextTranslationClient
from azure.core.credentials import AzureKeyCredential

# Azure Translator resource details
endpoint = "https://translator-test.cognitiveservices.azure.com/"
key = "dkakiimcDGV0QvQAn6RO72ngb4y5hCFiSGgOgGnH9FTyyGZ123456789"
region = "westus"

# Create the client
client = TextTranslationClient(
    endpoint=endpoint,
    credential=AzureKeyCredential(key),
    region=region
)

# Input
body = [{"text": "Good morning!"}]

# Translate
response = client.translate(
    body=body,
    to_language=["fr", "es"],
    from_language="en"
)

# Output results
for item in response:
    for translation in item.translations:
        print(f"{translation.to}: {translation.text}")

--------------------------------------------------------------------------------:

fr: Bonjour!
es: ¡Buenos días!



(.venv) bharathkumardasaraju@demos$ python3.12 ./1.azure-text-translation.py
English text is:   Good Morning!

The Telugu language code is as below
తెలుగు ==> te

the telugu language translation is this
శుభోదయం! ==> te
(.venv) bharathkumardasaraju@demos$



