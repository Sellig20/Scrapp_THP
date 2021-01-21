def scrap
    url = "https://coinmarketcap.com/all/views/all/"
    page = Nokogiri::HTML(open(url))


    arr_name = page.xpath('//*[@class="cmc-table-row"]//td[2]/div').map{|element| element = element.text}
    arr_value = page.xpath('//*[@class="cmc-table-row"]//td[5]/div').map{|element| element = element.text}

  arr_name.each do |name|
    hash = {}
  end

  # crypto = {
#   currency = row.xpath('td[2]/div/a').text
#   value = row.xpath('td[5]/div/a').text.gsub('$', '').gsub(',', '').to_f
# }

  hash_result[arr_name] = arr_value


    hash_final = Hash[arr_name.zip(arr_value)]

    puts hash_final

end
