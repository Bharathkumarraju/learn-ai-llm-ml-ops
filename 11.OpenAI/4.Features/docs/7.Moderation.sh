Ethical and hatred content and speech recognition

(.venv) bharathkumardasaraju@4.Features$ python3.12 ./14.Moderations.py
Moderation result Moderation(categories=Categories(harassment=False, harassment_threatening=False, hate=False, hate_threatening=False, illicit=False, illicit_violent=False, self_harm=False, self_harm_instructions=False, self_harm_intent=False, sexual=False, sexual_minors=False, violence=False, violence_graphic=False, harassment/threatening=False, hate/threatening=False, illicit/violent=False, self-harm/intent=False, self-harm/instructions=False, self-harm=False, sexual/minors=False, violence/graphic=False), category_applied_input_types=CategoryAppliedInputTypes(harassment=['text'], harassment_threatening=['text'], hate=['text'], hate_threatening=['text'], illicit=['text'], illicit_violent=['text'], self_harm=['text'], self_harm_instructions=['text'], self_harm_intent=['text'], sexual=['text'], sexual_minors=['text'], violence=['text'], violence_graphic=['text'], harassment/threatening=['text'], hate/threatening=['text'], illicit/violent=['text'], self-harm/intent=['text'], self-harm/instructions=['text'], self-harm=['text'], sexual/minors=['text'], violence/graphic=['text']), category_scores=CategoryScores(harassment=0.006003654373967173, harassment_threatening=5.649793328376294e-06, hate=2.6947915555885546e-05, hate_threatening=5.093705003229987e-07, illicit=3.535625074174432e-06, illicit_violent=1.4738981974494932e-06, self_harm=2.97731143841062e-06, self_harm_instructions=1.8342893327886845e-06, self_harm_intent=2.01456908529364e-06, sexual=0.09810266468169751, sexual_minors=2.868540823874629e-05, violence=1.442598644847886e-05, violence_graphic=7.411279871974134e-07, harassment/threatening=5.649793328376294e-06, hate/threatening=5.093705003229987e-07, illicit/violent=1.4738981974494932e-06, self-harm/intent=2.01456908529364e-06, self-harm/instructions=1.8342893327886845e-06, self-harm=2.97731143841062e-06, sexual/minors=2.868540823874629e-05, violence/graphic=7.411279871974134e-07), flagged=False)
(.venv) bharathkumardasaraju@4.Features$


 (.venv) bharathkumardasaraju@4.Features$ python3.12 ./15.Moderations.py

=== Moderation Result ===
Flagged: True
Categories flagged:
- harassment: 0.4968
- sexual: 0.4711
(.venv) bharathkumardasaraju@4.Features$

