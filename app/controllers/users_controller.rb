class UsersController < ApplicationController
	def new
 	 @user = User.new
	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	    session[:user_id] = @user.id
	    redirect_to root_url, notice: "Thank you for signing up!"
	  else
	    render "new"
	  end
	end

	def edit
		@user = User.find(params[:id])
	end

	private
		def signed_in_user
			redirect_to signin_path, notice: "Please sign in." unless signed_in?
		end
end
