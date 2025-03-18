programa
{
    funcao inicio()
    {
        inteiro assentos[10][12], linha, coluna

        para (inteiro i = 0; i < 10; i++)
        {
            para (inteiro j = 0; j < 12; j++)
            {
                assentos[i][j] = 0
            }
        }

        enquanto (verdadeiro)
        {
            escreva("\nMapa de assentos:\n")
            para (inteiro i = 0; i < 10; i++)
            {
                para (inteiro j = 0; j < 12; j++)
                {
                    escreva(assentos[i][j], " ") 
                }
                escreva("\n")
            }

            escreva("\nDigite a linha do assento (ou um número negativo para sair): ")
            leia(linha)
            escreva("Digite a coluna do assento (ou um número negativo para sair): ")
            leia(coluna)

            se (linha < 0 ou coluna < 0)
            {
                escreva("\nEncerrando o programa...\n")
                pare
            }

            se (linha >= 0 e linha < 10 e coluna >= 0 e coluna < 12)
            {
                se (assentos[linha][coluna] == 1)
                {
                    escreva("\nEsse assento já está ocupado! Escolha outro.\n")
                }
                senao
                {
                    assentos[linha][coluna] = 1
                    escreva("\nAssento reservado com sucesso!\n")
                }
            }
            senao
            {
                escreva("\nAssento inválido! Escolha uma linha entre 0-9 e uma coluna entre 0-11.\n")
            }
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 938; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */