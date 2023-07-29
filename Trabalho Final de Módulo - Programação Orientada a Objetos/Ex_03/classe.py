class Conta_Corrente:

    def __init__(self, num, nome):
        self.numero_conta = int(num)
        self.nome_conta = str(nome)
        self.__saldo = 0

    def alterar_nome(self, nome):
        self.nome_conta = nome
        print(f'Nome do correntista alterado para {self.nome_conta} com sucesso.')

    def deposito(self, valor):
        self.__saldo += valor
        print(f'Depósito de R${self.__saldo} realizado com sucesso.')

    def saque(self, valor):
        if valor <= self.__saldo:
            self.__saldo -= valor
            print(f'Depósito de R${self.__saldo} realizado com sucesso.')
        else:
            print('Valor de saque superior ao valor em saldo.')

    def exibir_dados(self):
        print(f'{"DADOS DA CONTA":-^20}')
        print(f'  -Número da Conta: {self.numero_conta}')
        print(f'  -Nome do Correntista: {self.nome_conta}')
        print(f'  -Saldo Disponível: R${self.__saldo:.2f}')     

