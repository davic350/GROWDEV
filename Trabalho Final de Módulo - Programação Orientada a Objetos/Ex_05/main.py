from classe import BombaCombustivel

bomba_01 = BombaCombustivel('gasolina', 4.89, 1000)

bomba_01.abastecer_por_valor(500)
bomba_01.abastecer_por_litro(35)
bomba_01.alterar_valor(5.50)
bomba_01.alterar_combustivel('etanol')
bomba_01.alterar_quantidade_combustivel(500)