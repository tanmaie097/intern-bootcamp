import ollama

response = ollama.chat(model='llama3', messages=[
    {'role': 'user', 'content': 'Summarize the history of MongoDB in one paragraph.'}
])

print(response['message']['content'])
print("hi")