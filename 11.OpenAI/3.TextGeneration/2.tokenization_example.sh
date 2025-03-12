How GPT Processes Tokenized inputs?

Model processes tokens through layers of the transformer architecture.
Once the input text has been tokenized, the model processes these tokens throgh layers of transformer architecture.
This involves the embedding layer, which converts tokens into dense vector embeddings. Whcih encodes semantic information about tokens.

next is attention mechanism -- how tokens related to each-other
and then next is Autoregressive process -- predict next token based on the previous one.
Positional ENcoding -
Attention layers -
Decoder Stack

(.venv) bharathkumardasaraju@3.TextGeneration$ python3.12 ./example_tokenization.py
Token: T
Token: h
Token: e
Token:
Token: d
Token: e
Token: b
Token: a
Token: t
Token: e
Token:
Token: o
Token: v
Token: e
Token: r
Token:
Token: w
Token: h
Token: e
Token: t
Token: h
Token: e
Token: r
Token:
Token: C
Token: r
Token: i
Token: s
Token: t
Token: i
Token: a
Token: n
Token: o
Token:
Token: R
Token: o
Token: n
Token: a
Token: l
Token: d
Token: o
Token:
Token: i
Token: s
Token:
Token: b
Token: e
Token: t
Token: t
Token: e
Token: r
Token:
Token: t
Token: h
Token: a
Token: n
Token:
Token: L
Token: i
Token: o
Token: n
Token: e
Token: l
Token:
Token: M
Token: e
Token: s
Token: s
Token: i
Token:
Token: i
Token: s
Token:
Token: o
Token: n
Token: e
Token:
Token: o
Token: f
Token:
Token: t
Token: h
Token: e
Token:
Token: m
Token: o
Token: s
Token: t
Token:
Token: d
Token: i
Token: s
Token: c
Token: u
Token: s
Token: s
Token: e
Token: d
Token:
Token: t
Token: o
Token: p
Token: i
Token: c
Token: s
Token:
Token: i
Token: n
Token:
Token: s
Token: p
Token: o
Token: r
Token: t
Token: s
Token: ,
Token:
Token: a
Token: n
Token: d
Token:
Token: o
Token: p
Token: i
Token: n
Token: i
Token: o
Token: n
Token: s
Token:
Token: v
Token: a
Token: r
Token: y
Token:
Token: w
Token: i
Token: d
Token: e
Token: l
Token: y
Token: .
Token:
Token: B
Token: o
Token: t
Token: h
Token:
Token: p
Token: l
Token: a
Token: y
Token: e
Token: r
Token: s
Token:
Token: h
Token: a
Token: v
Token: e
Token:
Token: t
Token: h
Token: e
Token: i
Token: r
Token:
Token: o
Token: w
Token: n
Token:
Token: s
Token: t
Token: r
Token: e
Token: n
Token: g
Token: t
Token: h
Token: s
Token:
Token: a
Token: n
Token: d
Token:
Token: h
Token: a
Token: v
Token: e
Token:
Token: a
Token: c
Token: h
Token: i
Token: e
Token: v
Token: e
Token: d
Token:
Token: i
Token: n
Token: c
Token: r
Token: e
Token: d
Token: i
Token: b
Token: l
Token: e
Token:
Token: s
Token: u
Token: c
Token: c
Token: e
Token: s
Token: s
Token:
Token: i
Token: n
Token:
Token: t
Token: h
Token: e
Token: i
Token: r
Token:
Token: c
Token: a
Token: r
Token: e
Token: e
Token: r
Token: s
Token: .
Token:

Token:

Token: *
Token: *
Token: C
Token: r
Token: i
Token: s
Token: t
Token: i
Token: a
Token: n
Token: o
Token:
Token: R
Token: o
Token: n
Token: a
Token: l
Token: d
Token: o
Token: :
Token: *
Token: *
Token:

Token: -
Token:
Token: K
Token: n
Token: o
Token: w
Token: n
Token:
Token: f
Token: o
Token: r
Token:
Token: h
Token: i
Token: s
Token:
Token: p
Token: h
Token: y
Token: s
Token: i
Token: c
Token: a
Token: l
Token: i
Token: t
Token: y
Token: ,
Token:
Token: a
Token: e
Token: r
Token: i
Token: a
Token: l
Token:
Token: a
Token: b
Token: i
Token: l
Token: i
Token: t
Token: y
Token: ,
Token:
Token: a
Token: n
Token: d
Token:
Token: g
Token: o
Token: a
Token: l
Token: -
Token: s
Token: c
Token: o
Token: r
Token: i
Token: n
Token: g
Token:
Token: p
Token: r
Token: o
Token: w
Token: e
Token: s
Token: s
Token: .
Token:

Token: -
Token:
Token: H
Token: a
Token: s
Token:
Token: p
Token: l
Token: a
Token: y
Token: e
Token: d
Token:
Token: i
Token: n
Token:
Token: m
Token: u
Token: l
Token: t
Token: i
Token: p
Token: l
Token: e
Token:
Token: l
Token: e
Token: a
Token: g
Token: u
Token: e
Token: s
Token:
Token: (
Token: P
Token: r
Token: e
Token: m
Token: i
Token: e
Token: r
Token:
Token: L
Token: e
Token: a
Token: g
Token: u
Token: e
Token: ,
Token:
Token: L
Token: a
Token:
Token: L
Token: i
Token: g
Token: a
Token: ,
Token:
Token: S
Token: e
Token: r
Token: i
Token: e
Token:
Token: A
Token: )
Token:
Token: a
Token: n
Token: d
Token:
Token: h
Token: a
Token: s
Token:
Token: b
Token: e
Token: e
Token: n
Token:
Token: s
Token: u
Token: c
Token: c
Token: e
Token: s
Token: s
Token: f
Token: u
Token: l
Token:
Token: i
Token: n
Token:
Token: e
Token: a
Token: c
Token: h
Token: .
Token:

Token: -
Token:
Token: H
Token: o
Token: l
Token: d
Token: s
Token:
Token: n
Token: u
Token: m
Token: e
Token: r
Token: o
Token: u
Token: s
Token:
Token: r
Token: e
Token: c
Token: o
Token: r
Token: d
Token: s
Token: ,
Token:
Token: i
Token: n
Token: c
Token: l
Token: u
Token: d
Token: i
Token: n
Token: g
Token:
Token: b
Token: e
Token: i
Token: n
Token: g
Token:
Token: t
Token: h
Token: e
Token:
Token: a
Token: l
Token: l
Token: -
Token: t
Token: i
Token: m
Token: e
Token:
Token: l
Token: e
Token: a
Token: d
Token: i
Token: n
Token: g
Token:
Token: s
Token: c
Token: o
Token: r
Token: e
Token: r
Token:
Token: i
Token: n
Token:
Token: t
Token: h
Token: e
(.venv) bharathkumardasaraju@3.TextGeneration$ python3.12 ./example_tokenization.py | wc -l
     516
(.venv) bharathkumardasaraju@3.TextGeneration$



