programa
{
    inteiro vaga

    funcao inicio()
    {
        inteiro estacionamento[30]
        inteiro opcao
        inicializarVetor(estacionamento)

        faca {
            escreva("\nMENU DE OPÇÕES: \n")
            escreva("1 - Entrada de Veículo \n")
            escreva("2 - Saída de Veículo \n")
            escreva("3 - Listar Vagas \n")
            escreva("4 - Sair do Programa \n")
            leia(opcao)

            escolha(opcao) {
                caso 1: 
                    entradaVeiculo(estacionamento)
                    pare
                caso 2: 
                    saidaVeiculo(estacionamento)
                    pare
                caso 3: 
                    listarVagas(estacionamento)
                    pare
            }
        } enquanto(opcao != 4)
    }

    funcao entradaVeiculo(inteiro estacionamento[])
    {
        escreva("Insira o número da vaga: \n")
        leia(vaga)

        se (vaga < 1 ou vaga > 30) {
            escreva("Número de vaga inválido! Escolha de 1 a 30.\n")
        } senao {
            se (estacionamento[vaga-1] == 0) {
                estacionamento[vaga-1] = 1
                escreva("Vaga preenchida com sucesso! \n")
            } senao {
                escreva("A vaga já foi preenchida, por favor tente outra vaga! \n")
            }
        }
    }

    funcao saidaVeiculo(inteiro estacionamento[])
    {
        escreva("Qual vaga que você estacionou?: \n")
        leia(vaga)

        se (vaga < 1 ou vaga > 30) {
            escreva("Número de vaga inválido! Escolha de 1 a 30.\n")
        } senao {
            se (estacionamento[vaga-1] == 1) {
                estacionamento[vaga-1] = 0
                escreva("Vaga liberada com sucesso, agradecemos a confiança! \n")
            } senao {
                escreva("Não há veículo estacionado nessa vaga! \n")
            }
        }
    }

    funcao listarVagas(inteiro estacionamento[])
    {
        escreva("\nEstado das Vagas:\n")
        para (inteiro i = 0; i < 30; i++) {
            escreva("Vaga nº ", i + 1, ": ")
            se (estacionamento[i] == 0) {
                escreva("Livre\n")
            } senao {
                escreva("Ocupada\n")
            }
        }
    }

    funcao inicializarVetor(inteiro &estacionamento[])
    {
        para (inteiro i = 0; i < 30; i++) {
            estacionamento[i] = 0
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2230; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */