# File: 00_setup/test_openai.py
import os
from dotenv import load_dotenv
import openai

load_dotenv()
api_key = os.getenv("OPENAI_API_KEY")

client = openai.OpenAI(api_key=api_key)

try:
    response = client.chat.completions.create(
        model="gpt-3.5-turbo",
        messages=[{"role": "user", "content": "Hello, OpenAI! Can you respond to me?"}]
    )
    print("OpenAI Response:", response.choices[0].message.content)
except Exception as e:
    print("Error calling OpenAI API:", e)
# Mock response for testing without using OpenAI API
print("OpenAI Response: Hello! This is a test response.")
