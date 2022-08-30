class ReportsController < ApplicationController
	def index
		http_basic_authenticate_or_request_with :name => "user", :password => "password"
		require 'net/http'
		require 'uri'
		require 'json'

		uri = URI.parse("https://anushkapatil.myshopify.com/admin/api/2022-07/orders.json?status=any")
		request = Net::HTTP::Get.new(uri)
		request["X-Shopify-Access-Token"] = "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"

		req_options = {  use_ssl: uri.scheme == "https", }

		response = Net::HTTP.start(uri.hostname, uri.port, req_options) { |http| http.request(request) }
		response.code
		@result = response.body
		@order_details = JSON.parse(@result) #a["orders"].class = array
		@city_names = []
		@order_details["orders"].each do   #a loop to display city names
		 	|x| @city_names << x["billing_address"]["city"].downcase
		end
		@city = Hash.new(0)  #a blank hash to to store city names and its count
		@city_names.each do 
			|count| @city[count] += 1 
		end

	end
	def city1
#debugger
		# sel_city_name = params[:city_name]
		    require 'net/http'
			require 'uri'
			require 'json'

			uri = URI.parse("https://anushkapatil.myshopify.com/admin/api/2022-07/orders.json?status=any")
			request = Net::HTTP::Get.new(uri)
			request["X-Shopify-Access-Token"] = "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"

			req_options = {  use_ssl: uri.scheme == "https", }

			response = Net::HTTP.start(uri.hostname, uri.port, req_options) { |http| http.request(request) }
			response.code
			@result = response.body
			@order_details = JSON.parse(@result) #a["orders"].class = array
			@city_details = []   #an empty array to store address
 			@order_details["orders"].each do |n| 	
 				@city_details << n["billing_address"] 
 				# if n["billing_address"]["city"].include? sel_city_name
 			end
	end
	def orderreport
		#http_basic_authenticate_or_request_with :name => "user", :password => "password"
		require 'net/http'
		require 'uri'
		require 'json'

		uri = URI.parse("https://anushkapatil.myshopify.com/admin/api/2022-07/orders.json?status=any")
		request = Net::HTTP::Get.new(uri)
		request["X-Shopify-Access-Token"] = "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"

		req_options = {  use_ssl: uri.scheme == "https", }

		response = Net::HTTP.start(uri.hostname, uri.port, req_options) { |http| http.request(request) }
		response.code
		@result = response.body
		@order_details = JSON.parse(@result) #a["orders"].class = array
 	end
 	def tab
 		require 'net/http'
			require 'uri'
			require 'json'

			uri = URI.parse("https://anushkapatil.myshopify.com/admin/api/2022-07/orders.json?status=any")
			request = Net::HTTP::Get.new(uri)
			request["X-Shopify-Access-Token"] = "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"

			req_options = {  use_ssl: uri.scheme == "https", }

			response = Net::HTTP.start(uri.hostname, uri.port, req_options) { |http| http.request(request) }
			response.code
			@result = response.body
			@order_details = JSON.parse(@result) #a["orders"].class = array
			@product_names = []
			@order_details["orders"].each do 	|x|
			@product_names << x["line_items"][0]["title"]
			end
			 @pro_name = Hash.new(0)  #a blank hash to to store product names and its count
				@product_names.each do 
					|count| @pro_name[count] += 1 
	
				end
 		
 	end
 	
end
