python3 -m venv /opt/venv
source /opt/venv/bin/activate
pip install openai


~ ➜  env | grep -i "OPENAI_"
OPENAI_API_KEY=Sk-kkAI-8f0922fb7d5c3d98caf6386f9c9c0bbacf4608280c1a5788d3ac7b52183b5ffckk_qo7zhbykltyd2dj6-kkcf74f528
AZURE_OPENAI_API_KEY=Sk-kkAI-8f0922fb7d5c3d98caf6386f9c9c0bbacf4608280c1a5788d3ac7b52183b5ffckk_qo7zhbykltyd2dj6-kkcf74f528
OPENAI_API_BASE=https://main.bk-ai-keys.bharathkumar.com/v1
AZURE_OPENAI_ENDPOINT=https://main.bk-ai-keys.bharathkumar.com/openai

~ ➜

~/openaiproject ➜  python3 short-story-gen.py
Prompt: Write a short story about a young knight who finds a mysterious map.
Generated Story:
In the quaint village of Eldergrove, nestled between emerald hills and whispering streams, there lived a young knight named Cedric. He was not yet of the stature of the famed knights of legend but was known for his bravery and kind heart. Every evening, after his training at the castle, Cedric would wander the dense forest that bordered Eldergrove, dreaming of great adventures and glory.

One crisp autumn afternoon, as golden leaves danced in the wind, Cedric stumbled upon a clearing he

Prompt: Tell a short story about an astronaut stranded on a distant planet.
Generated Story:
Captain Elara Voss had always dreamed of exploring the stars, her heart set on the uncharted expanses of the universe. When she was chosen for the mission to the distant planet of Theros-7, she felt as if she had finally reached the pinnacle of her aspirations. But a freak meteor shower during her approach had sent her spacecraft spiraling, forcing her to make an emergency landing on the planets surface.

As she emerged from the wreckage, the sun hung low on the horizon

Prompt: Generate a short story about a talking cat who solves mysteries.
Generated Story:
Once upon a time in the quaint little town of Whiskerville, there lived a peculiar cat named Sherlock. Unlike any other feline, Sherlock possessed the extraordinary ability to speak. With sleek, ebony fur and piercing green eyes, he was both charming and astute, often found lounging on the windowsill of his owner, an elderly woman named Mrs. Penelope.

Mrs. Penelope adored Sherlock, often saying, “You’re the smartest creature in Whiskerville!” Little did she know just how


~/openaiproject ➜
