curl -X POST --location 'https://bharath-ai-test.cognitiveservices.azure.com/vision/v3.2/read/analyze' \
--header 'Ocp-Apim-Subscription-Key: NaXJ3w3AAAAACOG0QFO' \
--header 'Content-Type: application/json' \
--data '{
    "url": "https://bkr-static-images.s3.ap-southeast-1.amazonaws.com/test.jpg"
}'

it gives the Operation-Location in headers
https://bharath-ai-test.cognitiveservices.azure.com/vision/v3.2/read/analyzeResults/e900a652-9c2d-47e9

 now run the GET API call



bharathkumardasaraju@abex-aws-ansible$ curl -ks --location 'https://bharath-ai-test.cognitiveservices.azure.com/vision/v3.2/read/analyzeResults/e900a652-9c2d-47e9' \
--header 'Ocp-Apim-Subscription-Key: NaXJ3w3AAAAACOG0QFO' | jq .
{
  "status": "succeeded",
  "createdDateTime": "2025-03-15T23:41:40Z",
  "lastUpdatedDateTime": "2025-03-15T23:41:40Z",
  "analyzeResult": {
    "version": "3.2.0",
    "modelVersion": "2022-04-30",
    "readResults": [
      {
        "page": 1,
        "angle": 0.0508,
        "width": 1520,
        "height": 1136,
        "unit": "pixel",
        "lines": [
          {
            "boundingBox": [
              721,
              823,
              758,
              824,
              759,
              838,
              722,
              838
            ],
            "text": "lash",
            "appearance": {
              "style": {
                "name": "other",
                "confidence": 0.972
              }
            },
            "words": [
              {
                "boundingBox": [
                  721,
                  823,
                  751,
                  823,
                  751,
                  838,
                  721,
                  837
                ],
                "text": "lash",
                "confidence": 0.641
              }
            ]
          },
          {
            "boundingBox": [
              155,
              992,
              1149,
              991,
              1150,
              1042,
              155,
              1045
            ],
            "text": "Caption: A group of people walking on a sidewalk",
            "appearance": {
              "style": {
                "name": "other",
                "confidence": 0.972
              }
            },
            "words": [
              {
                "boundingBox": [
                  157,
                  993,
                  328,
                  992,
                  327,
                  1044,
                  155,
                  1041
                ],
                "text": "Caption:",
                "confidence": 0.996
              },
              {
                "boundingBox": [
                  338,
                  992,
                  366,
                  992,
                  365,
                  1044,
                  337,
                  1044
                ],
                "text": "A",
                "confidence": 0.934
              },
              {
                "boundingBox": [
                  377,
                  992,
                  497,
                  992,
                  496,
                  1045,
                  376,
                  1044
                ],
                "text": "group",
                "confidence": 0.991
              },
              {
                "boundingBox": [
                  507,
                  992,
                  552,
                  992,
                  551,
                  1045,
                  506,
                  1045
                ],
                "text": "of",
                "confidence": 0.997
              },
              {
                "boundingBox": [
                  562,
                  992,
                  701,
                  992,
                  701,
                  1044,
                  561,
                  1045
                ],
                "text": "people",
                "confidence": 0.991
              },
              {
                "boundingBox": [
                  711,
                  992,
                  866,
                  992,
                  867,
                  1042,
                  711,
                  1044
                ],
                "text": "walking",
                "confidence": 0.996
              },
              {
                "boundingBox": [
                  876,
                  992,
                  928,
                  992,
                  928,
                  1041,
                  876,
                  1042
                ],
                "text": "on",
                "confidence": 0.998
              },
              {
                "boundingBox": [
                  937,
                  992,
                  960,
                  993,
                  961,
                  1040,
                  938,
                  1040
                ],
                "text": "a",
                "confidence": 0.994
              },
              {
                "boundingBox": [
                  970,
                  993,
                  1149,
                  994,
                  1150,
                  1034,
                  971,
                  1040
                ],
                "text": "sidewalk",
                "confidence": 0.996
              }
            ]
          },
          {
            "boundingBox": [
              155,
              1046,
              1283,
              1047,
              1283,
              1097,
              155,
              1096
            ],
            "text": "Tags: Building, jeans, street, outdoor, jacket, city, person",
            "appearance": {
              "style": {
                "name": "other",
                "confidence": 0.972
              }
            },
            "words": [
              {
                "boundingBox": [
                  157,
                  1047,
                  256,
                  1047,
                  255,
                  1096,
                  155,
                  1095
                ],
                "text": "Tags:",
                "confidence": 0.996
              },
              {
                "boundingBox": [
                  265,
                  1047,
                  442,
                  1047,
                  441,
                  1098,
                  264,
                  1096
                ],
                "text": "Building,",
                "confidence": 0.995
              },
              {
                "boundingBox": [
                  452,
                  1047,
                  567,
                  1047,
                  567,
                  1098,
                  451,
                  1098
                ],
                "text": "jeans,",
                "confidence": 0.997
              },
              {
                "boundingBox": [
                  577,
                  1047,
                  712,
                  1047,
                  712,
                  1098,
                  577,
                  1098
                ],
                "text": "street,",
                "confidence": 0.995
              },
              {
                "boundingBox": [
                  722,
                  1047,
                  895,
                  1048,
                  896,
                  1097,
                  722,
                  1098
                ],
                "text": "outdoor,",
                "confidence": 0.994
              },
              {
                "boundingBox": [
                  905,
                  1048,
                  1036,
                  1048,
                  1037,
                  1097,
                  905,
                  1097
                ],
                "text": "jacket,",
                "confidence": 0.996
              },
              {
                "boundingBox": [
                  1046,
                  1048,
                  1130,
                  1049,
                  1131,
                  1096,
                  1047,
                  1097
                ],
                "text": "city,",
                "confidence": 0.997
              },
              {
                "boundingBox": [
                  1139,
                  1049,
                  1280,
                  1049,
                  1281,
                  1094,
                  1140,
                  1096
                ],
                "text": "person",
                "confidence": 0.996
              }
            ]
          }
        ]
      }
    ]
  }
}
bharathkumardasaraju@abex-aws-ansible$