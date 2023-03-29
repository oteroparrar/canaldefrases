import openai
import os


openai.api_key = ""


def obtenerfrases():
    
    document= open("frases.txt", "w")
        # Set up the model and prompt
    model_engine = "text-davinci-003"
        # Generate a response
    completion = openai.Completion.create(
        engine=model_engine,
        prompt="enviame 20 frases  de motivacion en diferentes renglones sin enumerar, añadele emojis a cada una, pueden seer frases de escritores famosos",
        n=1,
        max_tokens=1024,
        stop=None,
        temperature=0.5,
        )
    response = completion.choices[0].text
    
    document.write(response)
    document.close()
    print("done")

obtenerfrases()    


                


    
