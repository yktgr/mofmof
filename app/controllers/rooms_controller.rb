class RoomsController < ApplicationController
  before_action:set_room,only:[:edit,:update,:show,:destroy]
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params_room)
    if @room.save
      redirect_to rooms_path,notice:"登録しました"
    else
      reder 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @room.update(params_room)
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

  def params_room
    params.require(:room).permit(:name,:price,:address,:age,:comment)
  end

  def set_room
    @room = Room.find(params[:id])
  end




end
