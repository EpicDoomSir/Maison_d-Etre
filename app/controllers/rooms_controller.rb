class RoomsController < ApplicationController
    def show
        @room = Room.find(params[:id])
    end

    def edit
        
    end
end
