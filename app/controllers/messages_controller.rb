class MessagesController < ApplicationController
	def blog
		@messages = Message.all
	end

	def index
		render text: "index"
	end

	def show
		@message = Message.where(id: params[:id]).first
	end

	def new
		@message = Message.new
	end

	
	
	def create 
  	@message = Message.new(message_params) 
  	if @message.save 
    	redirect_to '/blog' 
  	else 
    	render 'new' 
  	end 
	end

	def destroy
		@message = Message.find(params[:id])
		@message.destroy
		redirect_to action: 'blog'
	end

	private 
  	def message_params 
    	params.require(:message).permit(:content, :title) 
  	end
	
	
end