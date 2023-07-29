class BombaCombustivel:

    def __init__(self, tipo, valor, quantidade):
        
        self.tipo = tipo
        self.valor_litro = valor
        self.quantidade = quantidade

    def abastecer_por_valor(self, valor_abastecido):
        litros = valor_abastecido / self.valor_litro
        if litros <= self.quantidade:
            self.quantidade -= litros
            print(f'''R${valor_abastecido:.2f} abastecidos corresponde a {litros:.2f} litros de {self.tipo}. Obrigado pela preferência!''')
        else:
            print(f'''Quantidade superior à disponpivel.
                Atualmente há {self.quantidade:.2f} litros dispovíveis para abastecimento.
                Escolha novamente o valor a ser abastecido.''')

    def abastecer_por_litro(self, litros_abastecidos):
            valor = litros_abastecidos * self.valor_litro
            if litros_abastecidos <= self.quantidade:
                self.quantidade -= litros_abastecidos
                print(f'''{litros_abastecidos} litros de {self.tipo} corresponde a um abastecimento no valor de  R${valor:.2f}. Obrigado pela preferência!''')
            else: 
                print(f'''Quantidade superior à disponpivel.
                        Atualmente há {self.quantidade:.2f} litros dispovíveis para abastecimento.
                        Escolha novamente o valor a ser abastecido.''')

    def alterar_valor(self, valor_litro):
        self.valor_litro = valor_litro
        print(f'O litro de {self.tipo} agora custa R${self.valor_litro:.2f}.')

    def alterar_combustivel(self, tipo_combustivel):
        self.tipo = tipo_combustivel
        print(f'A bomba agora aramazena {self.tipo}.')

    def alterar_quantidade_combustivel(self, quantidade_combustivel):
        self.quantidade = quantidade_combustivel
        print(f'A quantidade de {self.tipo} na bomba foi alterada para {self.quantidade} litros.')
