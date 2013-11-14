require 'open-uri'

class ProductsController < ApplicationController
  def index
  	products_json = open('http://lcboapi.com/products?per_page=35').read
  	@products = JSON.parse(products_json)
  end

  def show
  	#product_json = open("http://lcboapi.com/products/#{params['id']}").read
  	product_json = open("http://lcboapi.com/products/#{params['id']}/stores").read
  	@product = JSON.parse(product_json)
  	
  	#@product_stores = JSON.parse(product_stores_json) ['result']
  end
	

	 

  def new
  end

  def edit
  end
end
