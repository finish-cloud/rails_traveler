class UsersController < ApplicationController
  def show
    @rooms = Room.where(user_id: current_user.id)
  end
end
