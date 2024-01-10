class BuscaCep
  include HTTParty
  
  def buscar_cep(cep)
    base_uri = 'https://viacep.com.br'
    url = base_uri + "/ws/#{cep}/json/"
    response = HTTParty.get(url)
  end
end