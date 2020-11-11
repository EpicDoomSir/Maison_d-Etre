class RoomsController < ApplicationController
    before_action :find_room

    def show
       @level = @room.level_rooms.first.level
    end

    def edit
       @items = @room.room_items.map {|room_item| room_item.item }
       @previous_room = Room.find(session[:last_room_id])
    end

    def update
        # byebug
        @room_item = RoomItem.find_by(item_id: strong_params[:item_id])
        @room_item.update(room_id: strong_params[:room_id])
        redirect_to room_path(session[:last_room_id])
    end

    private

    def find_room
        @room = Room.find(params[:id])
    end

    def strong_params
        params.require(:room_item).permit(:room_id, :item_id)
    end
end
