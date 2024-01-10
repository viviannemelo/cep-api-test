#language:pt

Funcionalidade: Pesquisar CEP
    Para averiguar informacoes
    O usuário do sistema
    Deseja poder consultar CEP

@consultar_cep
Esquema do Cenario: Consulta um CEP
  Dado que possuo o CEP "<cep>"
  Quando enviar a requisicao para buscar
  Entao validamos o retorno das informações do cep enviado com tipo "<tipo>" status "<code>"
    Exemplos:
      | tipo      | cep         | code |
      | positivo  | 05339-000   | 200  |
      | negativo  | 0533900     | 400  |