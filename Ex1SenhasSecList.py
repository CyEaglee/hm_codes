def operacao():
    pergunta = int(input("\nQual operação você deseja fazer?:\n"
                 "<1> Para ver as 10 primeiras senhas da SecList darkweb2017-top100\n"
                 "<2> Para ex2 \n"))
    if pergunta == 1:
        ten_passwords_SecList()
    elif pergunta == 2:
        print("func2\n")
        operacao()
    else:
        print("Dígito não reconhecido. Tente novamente.")
        operacao()

def ten_passwords_SecList():
    cont = 0
    with open("darkweb2017-top100.txt", "r") as arquivo:
        while cont < 10:
            print(arquivo.readline()[0:-1])
            cont = cont + 1
    operacao()

operacao()