# language: pt

Funcionalidade: Consultar veiculo
    Eu como visitante ou usuário
    Posso consultar veiculos
    Para negociar e comprar o veículo

Cenário: Verificar homePage
    Dado que estou na página inicial
    Então o logo WebMotors da homePage

@filtrarEstoque
Esquema do Cenário: Selecionar veiculo no estoque
    Dado que estou na página de estoque
    Quando selecionar <marca> e <modelo>
    Então é exibido o titulo 'Honda City Novos e Usados'

    Exemplos:
    | marca   | modelo |
    | 'Honda' | 'City' |

@filtrarLoja
Esquema do Cenário: Verificar homePage
    Dado que estou na página inicial
    Quando selecionar <marca> e <modelo>
        E selecionar o estoque de uma loja
    Então é exibido o titulo 'Honda City Novos e Usados'

    Exemplos:
    | marca   | modelo |
    | 'Honda' | 'City' |