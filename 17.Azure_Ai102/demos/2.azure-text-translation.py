from azure.ai.translation.text import TextTranslationClient
from azure.core.credentials import AzureKeyCredential
from azure.core.exceptions import HttpResponseError

# Azure Translator resource details
endpoint = "https://translator-bhrth-test.cognitiveservices.azure.com/"
key = "DGV0QvQAn6RO72ngb4y5hCFiSGgOgGnH9FTyyGZTys6XJQQJ99BCAC4f1cMXJ3"
region = "westus"

# Create the client
text_translator = TextTranslationClient(
    endpoint=endpoint,
    credential=AzureKeyCredential(key),
    region=region
)


try:
    to_language = ["cs", "es", "de", "te", "ta", "hi"]
    input_text_elements = ["This is a test"]

    response = text_translator.translate(body=input_text_elements, to_language=to_language)
    translation = response[0] if response else None

    if translation:
        detected_language = translation.detected_language
        if detected_language:
            print(
                f"Detected languages of the input text: {detected_language.language} with score: {detected_language.score}."
            )
        for translated_text in translation.translations:
            print(f"Text was translated to: '{translated_text.to}' and the result is: '{translated_text.text}'.")

except HttpResponseError as exception:
    if exception.error is not None:
        print(f"Error Code: {exception.error.code}")
        print(f"Message: {exception.error.message}")
