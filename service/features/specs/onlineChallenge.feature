# language: pt

Funcionalidade: Consulta veículo
    Como consumidor da API
    Posso fazer consultar
    Para obter dados do veiculo


Cenario: Consultar marcas de veículos
    Quando consultar a lista de marcas
    Então a lista de marcas

Cenario: Consultar lista de veículos conforme id da marca
    Dado que tenho o id da marca honda
    Quando consultar os modelos do veículo
    Então é retornado a lista de modelos

Cenário: Consulta lista de versões do Honda City
    Dado que tenho o id do honda City
    Quando chamar a API version
    Então é retorna a lista versões