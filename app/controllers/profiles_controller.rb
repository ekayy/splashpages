class ProfilesController < ApplicationController
  def new
  	@profile = Profile.new 
  	@user = User.find(session[:user_id])
  end

  def create
	  @profile = current_user.build_profile(params[:profile])
	  if @profile.save
	    render 'show'
	  else
	    render 'new'
	  end
	end

	def edit
		@profile = current_user.profile
		@user = User.find(session[:user_id])
	end

	def update
		@profile = current_user.profile
		if @profile.update_attributes(params[:profile])
      render 'show'
    else
      render 'edit'
    end
	end

	def show
		@profile = current_user.profile
	end

	def index
		@profiles = Profile.all
	end
end
