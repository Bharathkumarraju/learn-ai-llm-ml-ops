sk-proj-oQkXfSYoykvLy5n43H6lWxhFLGYnHaTGqgGKMnBF

curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer sk-proj-oQkXfSYoykvLy5n43H6lWxhFLGYnHaTGqgGKMnBF" \
  -d '{
    "model": "gpt-4o-mini",
    "store": true,
    "messages": [
      {"role": "user", "content": "write a haiku about ai"}
    ]
  }'



~/openaiproject ➜  curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer sk-proj-oQkXfSYoykvLy5n43H6lWxhFLGYnHaTGqgGKMnBF" \
  -d '{
    "model": "gpt-4o-mini",
    "store": true,
    "messages": [
      {"role": "user", "content": "write a haiku about ai"}
    ]
  }'
{
  "id": "chatcmpl-BAN2N0pmvZeaRT9bVFqrDkM72xhF4",
  "object": "chat.completion",
  "created": 1741811535,
  "model": "gpt-4o-mini-2024-07-18",
  "choices": [
    {
      "index": 0,
      "message": {
        "role": "assistant",
        "content": "Silent circuits hum,  \nThoughts woven in code and dreams,  \nMind of silicon.",
        "refusal": null,
        "annotations": []
      },
      "logprobs": null,
      "finish_reason": "stop"
    }
  ],
  "usage": {
    "prompt_tokens": 13,
    "completion_tokens": 19,
    "total_tokens": 32,
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
  "system_fingerprint": "fp_06737a9306"
}

~/openaiproject ➜


~/openaiproject ➜  python3 ai-content-gen.py
"Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful." – Albert Schweitzer

~/openaiproject ➜

~/openaiproject ➜  env | grep -i OPENAI_
OPENAI_API_KEY=Sk-kkAI-0b53109923bafca3fd
AZURE_OPENAI_API_KEY=Sk-kkAI-0b53109923bafca3fd
OPENAI_API_BASE=https://main.bk-ai-keys.bharathkumar.com/v1
AZURE_OPENAI_ENDPOINT=https://main.bk-ai-keys.bharathkumar.com/openai
~/openaiproject ➜

~/openaiproject ➜  python3 ai-content-gen.py
"Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful." – Albert Schweitzer
"Believe you can and you're halfway there." – Theodore Roosevelt

~/openaiproject ➜



(.venv) bharathkumardasaraju@demo_prompts$ python3.12 ./ai_code_gen4.py
"Believe you can and you're halfway there." —Theodore Roosevelt
"Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful." – Albert Schweitzer
"Believe in your journey, for every step forward, no matter how small, brings you closer to your dreams."
(.venv) bharathkumardasaraju@demo_prompts$


