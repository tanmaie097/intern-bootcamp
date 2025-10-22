import os
import ollama

MODEL = os.getenv('OPENAI_MODEL', 'gpt-5-mini')

response = ollama.chat(model=MODEL, messages=[
    {'role': 'user', 'content': 'Summarize the history of MongoDB in one paragraph.'}
])

print(response['message']['content'])