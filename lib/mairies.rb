require 'bundler'
Bundler.require
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'httparty'

def scrap

url = "http://annuaire-des-mairies.com/val-d-oise.html"

#mail des maires
     
def get_townhall_email(url)
	page = Nokogiri::HTML(URI.open(url))
	names = page.xpath('//a[@class="lientxt"]').map{|element| element = element.text}
	return email
end


town_urls_array = []
     
      arr_hash = []

page.each do |url|
	town_urls_array.push(url.text.delete_prefix('.').prepend('https://www.annuaire-des-mairies.com'))
end

email = []

nb = town_urls_array.length

nb.times do |index|
	page_mail = Nokogiri::HTML(URI.open(town_urls_array [index]))
	emails = page_mail.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').map{|element| element = element.text}
        puts email #Donne l'email de chaque mairie en colonne 
end

puts names
    
end
