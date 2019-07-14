class RoomsController < ApplicationController
  before_action:set_room,only:[:edit,:update,:show,:destroy]
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
    2.times{@room.places.build}
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to rooms_path,notice:"編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @room.delete
    redirect_to rooms_path,notice:"削除しました"
  end

  private

  def room_params
    params.require(:room).permit(:name,:price,:address,:age,:comment,
    places_attributes: [:id,:room_id,:train,:station,:walk])
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
