from openai import OpenAI

client = OpenAI()

# article
article = "ప్రతిపత్తిస్వత్వముల విషయమున మానవులెల్లరును జన్మతః స్వతంత్రులును సమానులును నగుదురు. వారు వివేచన-అంతఃకరణ సంపన్నులగుటచే పరస్పరము భ్రాతృభావముతో వర్తింపవలయును."

# prompt
prompt = f"translate the following article: {article}"

# create a function that can translates the article
def article_translate(prompt):
    response = client.chat.completions.create(
        model = "gpt-4o",
        messages = [{"role": "user", "content": prompt},
                    {"role": "assistant", "content": "You are a professional translator. You translate news articles into English"},
                    {"role": "system", "content": "Direct english translator"}
                    ],
        temperature=0.1
    )
    return response.choices[0].message.content

print(article_translate(prompt))