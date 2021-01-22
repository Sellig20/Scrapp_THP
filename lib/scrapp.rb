require 'bundler'
Bundler.require
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'httparty'
    

url = "https://coinmarketcap.com/all/views/all/"
page = Nokogiri::HTML(open(url))


	 arr_name = page.xpath('//*[@class="cmc-table-row"]//td[2]/div').map{|element| element = element.text} 
=begin
Je recupere le Xpath des symboles, je lui demande de prendre la colonne 2 du site Coinmarket
=end
    	arr_value = page.xpath('//*[@class="cmc-table-row"]//td[5]/div').map{|element| element = element.text}

=begin 
Pareil, je sors tous les liens qui ont un titre dans la classe "table row", a chaque fois il cree un array avec les donnees demandees
=end

=begin
Tentative de boucle pour lire les "devices" telles que BTS, ETH... pour les classer par la suite dans un array 
=end

def hash_together
	arr_name.collect do |name| 
    	hash = {}
	crypto = {}
	currency = row.xpath('td[2]/div/a').text
	value = row.xpath('td[5]/div/a').text.gsub('$', '').gsub(',', '').to_f
	end
end

def perform
	hash_result[arr_name] = arr_value		#test1 Classer chaque devices w/ prices
	hash_final = Hash[arr_name.zip(arr_value)]	#test2 Sortir 200 hashs dans un array
	puts hash_final
end


perform
