class RoomItemsController < ApplicationController
    before_action :find_room_item

    def show
        session[:last_room_id] = @room_item.room.id
    end

    def edit
        @level = LevelRoom.find_by(room_id: @room_item.room.id).level
    end

    def update
        @room_item.update(params.require(:room_item).permit(:room_id))
        
        # go to room it was sent to
        # go to form to switch out one item
        # if !session[:first_pass]
        #     session[:first_pass] = true
        #     redirect_to edit_room_item_path
        # else
        #     redirect_to room_path(session[:last_room_id])
        # end
        redirect_to edit_room_path(@room_item.room)
    end

    private
    def find_room_item
        @room_item = RoomItem.find(params[:id])
    end
end
