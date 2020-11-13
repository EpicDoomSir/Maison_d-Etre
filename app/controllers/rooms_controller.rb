class RoomsController < ApplicationController
    before_action :find_room

    def show
       @level = @room.level_rooms.first.level
    end

    def edit
       @items = @room.room_items.map {|room_item| room_item.item }
       @previous_room = Room.find(session[:last_room_id])
       @item_name = @room.room_items.order(:updated_at).last.item.name
    end

    def update
        @room_item = RoomItem.find_by(item_id: strong_params[:item_id])
        @room_item.update(room_id: strong_params[:room_id])
        session[:room_status][session[:last_room_id].to_s] = check_if_complete
        # byebug
        if !session[:room_status][session[:last_room_id].to_s]
            redirect_to room_path(session[:last_room_id])
        else
            case LevelRoom.find_by(room_id: session[:last_room_id]).level
            when Level.first
                redirect_to hallway_one_path
            when Level.second
                redirect_to hallway_two_path
            else
                redirect_to hallway_three_path
            end
        end
    end

    private

    def find_room
        @room = Room.find(params[:id])
    end

    def strong_params
        params.require(:room_item).permit(:room_id, :item_id)
    end

    def check_if_complete
        correct_ids = Room.find(session[:last_room_id]).items.ids
        current_ids = Room.find(session[:last_room_id]).room_items.map{|x| x.item_id}
        (current_ids - correct_ids).blank?
    end
end
