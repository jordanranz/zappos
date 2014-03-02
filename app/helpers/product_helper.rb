module ProductHelper
  require 'cgi'
  require 'json'
  require 'open-uri'

  
  # Query Zappos API for given search term
  def do_search(term)
	key = "b05dcd698e5ca2eab4a0cd1eee4117e7db2a10c4"
    if term.nil?
      url = "http://api.zappos.com/Search?term=''&key=#{key}"
    else 
      url = "http://api.zappos.com/Search?term=#{CGI.escape(term)}&key=#{key}"
    end

	result = JSON.parse(open(url).read)
    
    #return array of results
    @results = result['results']
  end

  # Query Zappos API for product information for given product id
  def get_prod(id)
	key = "b05dcd698e5ca2eab4a0cd1eee4117e7db2a10c4"
    url = "http://api.zappos.com/Product/#{id}?includes=[%22styles%22]&key=#{key}"

	result = JSON.parse(open(url).read)
 
    #return product info as a json object
    product = result['product']
  end  

  # Create an image tag for product json object
  def img_for(product)
    img_url = product['thumbnailImageUrl']
    prod_name = product['productName']
    image_tag(img_url, alt: prod_name, class: "grid_img")
  end
end

