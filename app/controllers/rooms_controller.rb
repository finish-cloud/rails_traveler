class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room =Room.new
  end

  def create
    room = Room.create!(name: room_params[:name], introduction: room_params[:introduction], charge: room_params[:charge], address: room_params[:address], image: room_params[:image], user_id: current_user.id)
    redirect_to room
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def room_params
    params.require(:room).permit(:name, :introduction, :charge, :address, :image)
  end
end
