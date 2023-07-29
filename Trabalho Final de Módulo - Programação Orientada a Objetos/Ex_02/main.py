from classe import Retangulo

retangulo_01 = Retangulo()

retangulo_01.mudar_valor(50, 25)
valores = retangulo_01.retornar_lados()
print(valores)
pisos = retangulo_01.calcular_area()
rodapes = retangulo_01.calcular_perimetro()

print(f'Serão necessários {pisos:.0f} pisos (1 x 1 m²) e {rodapes:.2f} m de rodapés.')