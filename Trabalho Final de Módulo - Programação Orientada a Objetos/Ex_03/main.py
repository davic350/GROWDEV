from classe import Conta_Corrente

conta = Conta_Corrente(25332, 'Davi Oliveira')

conta.alterar_nome('Lineu Silva')
conta.deposito(1000)
conta.saque(350)
conta.exibir_dados()
