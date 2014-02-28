module ProductHelper
  require 'cgi'
  require 'json'
  require 'open-uri'

  def do_search(term)
	key = "b05dcd698e5ca2eab4a0cd1eee4117e7db2a10c4"
	url = "http://api.zappos.com/Search?term=#{CGI.escape(term)}&key=#{key}"

	result = JSON.parse(open(url).read)
    @results = result['results']
  end

  def get_prod(id)
	key = "b05dcd698e5ca2eab4a0cd1eee4117e7db2a10c4"
    url = "http://api.zappos.com/Product/#{id}?includes=[%22styles%22]&key=#{key}"

	result = JSON.parse(open(url).read)
    product = result['product']
  end  

  def img_for(product)
    img_url = product['thumbnailImageUrl']
    prod_name = product['productName']
    image_tag(img_url, alt: prod_name, class: "grid_img")
  end
end

