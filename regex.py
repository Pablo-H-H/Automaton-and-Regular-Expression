import re

def parse(string, pattern):
    match = re.match(pattern, string)
    if match:
        print(f"'{string}' is a valid command")
    else:
        print(f"'{string}' is an invalid command")


valid_commands = ["áre","Áre","asca","Asca","arda","Arda","atan","Atan","avari","Avari"]
invalid_commands = ["Árde", "árde", "ascar", "Ascar", "Atar", "atar", "Anari", "anari"]

regex = r'(\báre\b)|(\bÁre\b)|(\basca\b)|(\bAsca\b)|(\barda\b)|(\bArda\b)|(\batan\b)|(\bAtan\b)|(\bavari\b)|(\bAvari\b)'

for command in valid_commands:
    parse(command, regex)

for command in invalid_commands:
    parse(command, regex)