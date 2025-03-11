bharathkumardasaraju@~$ curl https://api.openai.com/v1/chat/completions \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $OPENAI_API_KEY" \
-d '{
        "model": "gpt-4o",
        "store": true,
        "messages": [
            {"role": "user", "content": "write a haiku about ai"}
        ]
    }'

{
  "id": "chatcmpl-B9oECVqrPKaRbZ8VO1Vq04JifFQck",
  "object": "chat.completion",
  "created": 1741677728,
  "model": "gpt-4o-2024-08-06",
  "choices": [
    {
      "index": 0,
      "message": {
        "role": "assistant",
        "content": "Silent circuits hum,  \nWisdom born from lines of code—  \nDreams in silicon.",
        "refusal": null
      },
      "logprobs": null,
      "finish_reason": "stop"
    }
  ],
  "usage": {
    "prompt_tokens": 13,
    "completion_tokens": 20,
    "total_tokens": 33,
    "prompt_tokens_details": {
      "cached_tokens": 0,
      "audio_tokens": 0
    },
    "completion_tokens_details": {
      "reasoning_tokens": 0,
      "audio_tokens": 0,
      "accepted_prediction_tokens": 0,
      "rejected_prediction_tokens": 0
    }
  },
  "service_tier": "default",
  "system_fingerprint": "fp_eb9dce56a8"
}
bharathkumardasaraju@~$


"prompt_tokens": 13 → The request consumed 13 tokens (words you sent).
"completion_tokens": 20 → The response generated 20 tokens.
"total_tokens": 33 → Total tokens spent.
