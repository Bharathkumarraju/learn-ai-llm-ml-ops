curl  -X POST--location 'https://bharath-ai-test.cognitiveservices.azure.com/vision/v3.2/read/analyze' \
--header 'Ocp-Apim-Subscription-Key: NaXJ3w3AAAAACOG0QFO' \
--header 'Content-Type: application/json' \
--data '{
    "url": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Gfp-wisconsin-madison-the-nature-boardwalk.jpg/2560px-Gfp-wisconsin-madison-the-nature-boardwalk.jpg"
}'

it gives the Operation-Location in headers
 https://bharath-ai-test.cognitiveservices.azure.com/vision/v3.2/read/analyzeResults/3092265d-9678-464f

 now run the GET API call



bharathkumardasaraju@~$ curl -ks --location 'https://bharath-ai-test.cognitiveservices.azure.com/vision/v3.2/read/analyzeResults/3092265d-9678-464f' \
--header 'Ocp-Apim-Subscription-Key: NaXJ3w3AAAAACOG0QFO' | jq .
{
  "status": "succeeded",
  "createdDateTime": "2025-03-15T22:52:24Z",
  "lastUpdatedDateTime": "2025-03-15T22:52:26Z",
  "analyzeResult": {
    "version": "3.2.0",
    "modelVersion": "2022-04-30",
    "readResults": [
      {
        "page": 1,
        "angle": 0,
        "width": 2560,
        "height": 1669,
        "unit": "pixel",
        "lines": []
      }
    ]
  }
}
bharathkumardasaraju@~$