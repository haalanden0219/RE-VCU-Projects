import subprocess

password_cracker = "password_cracker.exe"


executable_name = 'softwarechallenge_expert.exe'
input_file = 'correct_password.txt'

subprocess.run(password_cracker, shell=True)
with open(input_file, 'r') as file:
    input_data = file.read()
subprocess.run(executable_name, input=input_data, text=True, shell=True)

print("\nInput Data: " , input_data)
