(.venv) bharathkumardasaraju@3.TextGeneration$ python3.12 ./aspect_analysis.py

 Analyzing sentiment for aspect: 'design'...
️ Raw Response for 'design': ChatCompletion(id='chatcmpl-BAkyWeVYy1SsvAqf5YuHWSBda2ijF', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content="'Positive'", refusal=None, role='assistant', audio=None, function_call=None, tool_calls=None, annotations=[]))], created=1741903552, model='gpt-4-0613', object='chat.completion', service_tier='default', system_fingerprint=None, usage=CompletionUsage(completion_tokens=4, prompt_tokens=68, total_tokens=72, completion_tokens_details=CompletionTokensDetails(accepted_prediction_tokens=0, audio_tokens=0, reasoning_tokens=0, rejected_prediction_tokens=0), prompt_tokens_details=PromptTokensDetails(audio_tokens=0, cached_tokens=0)))
 Extracted Sentiment for 'design': 'Positive'

now the dictionary is this

{'design': "'Positive'"}
dict_items([('design', "'Positive'")])



 Analyzing sentiment for aspect: 'performance'...
️ Raw Response for 'performance': ChatCompletion(id='chatcmpl-BAkyXyE8FxyqZMjYwwsOfFfw3CmAn', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content="'Negative'", refusal=None, role='assistant', audio=None, function_call=None, tool_calls=None, annotations=[]))], created=1741903553, model='gpt-4-0613', object='chat.completion', service_tier='default', system_fingerprint=None, usage=CompletionUsage(completion_tokens=4, prompt_tokens=68, total_tokens=72, completion_tokens_details=CompletionTokensDetails(accepted_prediction_tokens=0, audio_tokens=0, reasoning_tokens=0, rejected_prediction_tokens=0), prompt_tokens_details=PromptTokensDetails(audio_tokens=0, cached_tokens=0)))
 Extracted Sentiment for 'performance': 'Negative'

now the dictionary is this

{'design': "'Positive'", 'performance': "'Negative'"}
dict_items([('design', "'Positive'"), ('performance', "'Negative'")])


Aspect: design, Sentiment: 'Positive'
Aspect: performance, Sentiment: 'Negative'
(.venv) bharathkumardasaraju@3.TextGeneration$

