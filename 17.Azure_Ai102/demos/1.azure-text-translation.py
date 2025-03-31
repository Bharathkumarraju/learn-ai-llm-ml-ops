from azure.ai.translation.text import  TextTranslationClient
from azure.core.credentials import AzureKeyCredential


endpoint =  "https://translator-bhrth-test.cognitiveservices.azure.com/"
key = "123GV0QvQAn6RO72ngb4y5hCFiSGgOgGnH9FTyyGZTys6XJQQJ99BCAC4f1c123"
region = "westus"

# Create the client

client = TextTranslationClient(
    endpoint =  endpoint,
    credential=AzureKeyCredential(key),
    region = region
)

body = [{"text": "Good Morning!"}]

for i in body:
    print("English text is:  ", i['text'])

list_of_langs =  client.get_supported_languages(scope="translation")

#print(list_of_langs.translation)

# for langcode, nativelangname in list_of_langs.translation.items():
#     print(f"{langcode} ==> {nativelangname['nativeName']}")

print("")
print("The Telugu language code is as below")
for langcode, nativelangname in list_of_langs.translation.items():
    if langcode == "te":
        print(f"{nativelangname['nativeName']} ==> {langcode}")

response = client.translate(
     body=body,
     to_language=["te"],
     from_language="en"
 )

# print("the response is: ", response)

print("")
for item in response:
    for translation in item.translations:
#        print(f"the keys and values of translation is this {translation}")
        print("the telugu language translation is this")
        print(f"{translation.text} ==> {translation.to}")


