#encoding: utf-8
class UsersController < ApplicationController
	def new 
		@user = User.new
	end
	def create 
		@user = User.new(params[:user])
		puts @user
		if @user.save
			session[:user_id] = @user.id
			redirect_to @user, notice: "Obrigado por se Cadastrar no Ribbit!"
		else 
			render 'new'
		end
	end
	def show
	  @user = User.find(params[:id])
	end
end
