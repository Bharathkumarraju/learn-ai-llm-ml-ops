from azure.ai.translation.text import TextTranslationClient
from azure.core.credentials import AzureKeyCredential
from azure.core.exceptions import HttpResponseError

# Azure Translator resource details
endpoint = "https://api.cognitive.microsofttranslator.com/"
key = "P2wvbrhxRb6ba79WnVoyyQ61i2KEhxBzDyktjcP2vLINkJQQJ99BDAC4f1cMXJ1232"
region = "westus"

# Create the client
text_translator = TextTranslationClient(
    endpoint=endpoint,
    credential=AzureKeyCredential(key),
    region=region
)


try:
    to_language = ["cs", "es", "de", "te", "ta", "hi", "ka", "lt"]
    input_text_elements = ["This is a test.. I would like to say thank you to Mr.Sam Altman! why because he invented chatGPT! Great guy!"]

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