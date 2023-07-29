class Tamagochi:

    def __init__(self, nome = None, fome = None, idade = 0, saude = True):
        self.nome = nome

        #O atributo fome só pode ir de 1 até 10
        if 0 <= fome <= 10:
            self.fome = fome
        elif fome > 10:
            self.fome = 10
        elif fome < 0:
            self.fome = 1

        self.saude = saude

        self.idade = idade 

    def alterar_nome(self):
        self.nome = str(input('Digite o nome do seu Tamagochi: '))
        print(f'{self.nome}: "Adorei o meu nome!" ')

    def alterar_fome(self):
        valor = 0
        while True:
            print('Leite (+10), Maçã (+8), Suco (+6), Chá (+4), Água (+2)')
            print(f'''
            Qual comida você vai dar para seu {self.nome}:
                1) - Água
                2) - Chá
                3) - Suco
                4) - Maçã
                5) - Leite
                6) - Não alimentar.''')
            comida = int(input('Escolha uma opção de alimento: '))
            if comida == 1:
                valor = 2
            elif comida == 2:
                valor = 4
            elif comida == 3:
                valor = 6
            elif comida == 4:
                valor = 8
            elif comida == 5:
                valor = 10
            elif comida == 6:
                print(f'{self.nome} não foi alimentado.')
            else:
                print('Opção inválida.')
            if 1 <= comida <= 8:
                break
        
        if self.fome + valor <= 10:
            self.fome += valor
            print(f'{self.nome}: "Yammy..."')
        else:
            self.fome = 10
            print(f'{self.nome}: "Yammy..."')

    def alterar_saude(self):
        if self.saude == False:
            while True:
                remedio = str(input(f'Gostaria de dar remédio a {self.nome}? [S/N]: ')).upper().strip()
                if remedio == 'S':
                    print(f'{self.nome}: " Me sinto bem melhor agora. Obrigado!"')
                    self.saude = True
                    break
        else:
            print(f'{self.nome} já está saudável.')

    def alterar_idade(self):
        self.idade = int(input(f'{self.nome}: "Qual idade eu tenho?": '))

    def exibir_nome(self):
        print(f'{"EXIBIR NOME:":.>15}')
        print(f'{self.nome}: "Eu me chamo {self.nome}." ')
        print('..'*15)

    def exibir_fome(self):
        if 6 <= self.fome <= 10:
            print('..'*15)
            print(f'FOME DE {self.nome.upper()}: {self.fome}')
            print(f'{self.nome}: "Eu estou com barriga cheia!" ')
            print('..'*15)
        elif 5 <= self.fome <= 3:
            print('..'*15)
            print(f'FOME DE {self.nome.upper()}: {self.fome}')
            print(f'{self.nome}: "Eu estou com fome." ')
            print('..'*15)
        else:
            print('..'*15)
            print(f'FOME DE {self.nome.upper()}: {self.fome}')
            print(f'{self.nome}: "Eu estou faminto!" ')
            print('..'*15)
    def exibir_saude(self):
        if self.saude == True:
            print('..'*15)
            print(f'SAÚDE DE {self.nome.upper()}: {self.saude}')
            print(f'{self.nome}: "Eu estou saudável." ')
            print('..'*15)
        else:
            print('..'*15)
            print(f'SAÚDE DE {self.nome.upper()}: {self.saude}')
            print(f'{self.nome}: "Acho que estou doente." ')
            print('..'*15)
    
    def exibir_idade(self):
        print(f'{"EXIBIR IDADE:":>-15}')
        print(f'{self.nome}: "Eu tenho {self.idade} anos." ')
        print('..'*15)
    


            

            