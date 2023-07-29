class Bola:

    def __init__(self, cor, circunf, material) :
        self.cor = cor
        self.circunf = circunf
        self.material = material

    def troca_cor(self, cor):
        self.cor = cor

    def mostra_cor(self):
        print(f'A cor da bola é {self.cor}') 
        