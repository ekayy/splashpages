module ApplicationHelper
	def show_user_bg
    "background:transparent url(#{current_user.profile.image}) no-repeat fixed left 40px;
    -webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;"
  end
end
