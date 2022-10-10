class UserController < ApplicationController
 
  def index
    @users = User.all.order({ :username => :asc })

    render({ :template => "user/index.html" })
  end
 
  def show
    the_username = params.fetch("the_username")
    @user = User.where({ :username => the_username }).at(0)

    render({ :template => "user/show.html.erb" })
  end


end
