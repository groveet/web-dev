class PagesController < ApplicationController
	def welcome
	end

	def about
		render text: "about"
	end

	def portfolio
		render text: "portfolio page"
	end

	

	def contact
		render text: "contact page"
	end
end
