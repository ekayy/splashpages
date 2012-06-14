module ApplicationHelper
	def show_user_bg
    "background:transparent url(#{@user.profile.image_url(:main).to_s}) no-repeat fixed center center;
    -webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;"
  end
end
