Dado('que possuo o CEP {string}') do |cep|
    @cep = cep
end

Quando('enviar a requisicao para buscar') do
    @resultado = $chamar_api.buscar_cep(@cep)
end


Entao('validamos o retorno das informações do cep enviado com tipo {string} status {string}') do |tipo, code|
    if tipo.eql?('positivo')
        expect(@resultado['cep']).to eql(@cep.strip)
        expect(@resultado['logradouro']).to eql('Avenida Corifeu de Azevedo Marques')
        expect(@resultado['bairro']).to eql('Vila Lageado')
        expect(@resultado['uf']).to eql('SP')
        expect(@resultado.code).to eql(200)
    else
        expect(@resultado.code).to eql(400)
    end
end
