class Retangulo:

    def __init__(self, base = 0, altura = 0):
        self.base = base
        self.altura = altura

    def mudar_valor(self, base, altura):
        self.base = base
        print(f'Valor da Base alterado para : {self.base} m')
        self.altura = altura
        print(f'Valor da altura alterado para : {self.base} m')


    def retornar_lados(self):
        valores = f'Base: {self.base}m, Altura: {self.altura}m'
        return valores

    def calcular_area(self):
        area = self.base * self.altura
        return area
    
    def calcular_perimetro(self):
        perimetro = (self.base * 2) + (self.altura * 2)
        return perimetro