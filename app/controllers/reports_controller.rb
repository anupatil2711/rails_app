class ReportsController < ApplicationController
	def index
		require 'json'
 			@result = File.read("/Users/apple/Downloads/response.json")
 			@order_details = JSON.parse(@result) #a["orders"].class = array
 			@city_names = []
 			@order_details["orders"].each do   #a loop to display city names
 				|x| @city_names << x["billing_address"]["city"]
		    end
		    @city = Hash.new(0)  #a blank hash to to store city names and its count
		    @city_names.each do 
		    	|count| @city[count] += 1 
		    end
	end
	def city1
#		debugger
		sel_city_name = params[:city_name]
		  require 'json'
			@result = File.read("/Users/apple/Downloads/response.json")
 			@order_details = JSON.parse(@result) #a["orders"].class = array
			@city1_details = []   #an empty array to store address
 			@order_details["orders"].each do |n| 	
 				@city1_details << n["billing_address"] if n["billing_address"]["city"].include? sel_city_name
 			end
	end
	def product
		require 'json'
 			@result = File.read("/Users/apple/Downloads/products.json")
 			@order_details = JSON.parse(@result) #a["orders"].class = array
 			
	end
end
