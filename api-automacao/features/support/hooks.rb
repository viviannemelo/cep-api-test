Dir[File.join(File.dirname(__FILE__), '../class/*.rb')].sort.each { |file| require file }

$chamar_api = BuscaCep.new