require 'open-uri'

class ProductsController < ApplicationController
  def index
  	products_json = open('http://lcboapi.com/products?per_page=35').read
  	@products = JSON.parse(products_json)
  end

  def show
  	product_json = open("http://lcboapi.com/products/#{params['id']}").read
  	@product = JSON.parse(product_json) ['result']
  end
		# id = params[:id]
	 #  	products_json = open('http://lcboapi.com/products?per_page=35').read
	 #  	products = JSON.parse(products_json)
	 #  	products['result'].each do |product|
	 #  		@product = product if product['id'].to_i == id.to_i
	 

  def new
  end

  def edit
  end
end
