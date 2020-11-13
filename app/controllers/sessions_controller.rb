class SessionsController < ApplicationController

  def index

  end


  def logout 
    session.delete(:user_id)

    redirect_to homepage_path
  end 

  def new 
  end 

  def create 
    # byebug
    user = User.find_by(username: params[:session][:username])
     
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to homepage_path
    else
      flash[:error] = "Username or Password was incorrect"
      redirect_to new_login_path
    end 
  end

  def new_game
    randomize_rooms
    RoomItem.destroy_all
    Level.all.each do |level|
      randomize_items(level)
    end
    session[:room_status] = {}
    LevelRoom.all.each do |level_room|
      session[:room_status][level_room.room_id] = false
    end

    redirect_to hallway_one_path
  end

  def hallway_one
    @level = Level.first
    render :hallway
  end
  
  def hallway_two
    @level = Level.second
    render :hallway
  end

  def hallway_three
    @level = Level.third
    render :hallway
  end

  private
  def randomize_rooms
    easy_room = Room.find_by(difficulty: 1)
    medium_rooms = []
    Room.where(difficulty: 2).each{|x| medium_rooms << x}
    hard_rooms = []
    Room.where(difficulty: 3).each{|x| hard_rooms << x}

    LevelRoom.destroy_all

    LevelRoom.create(level_id: Level.first.id, room_id: easy_room.id)
    LevelRoom.create(level_id: Level.first.id, room_id: medium_rooms.delete_at(rand(medium_rooms.count)).id)
    LevelRoom.create(level_id: Level.first.id, room_id: medium_rooms.delete_at(rand(medium_rooms.count)).id)

    LevelRoom.create(level_id: Level.second.id, room_id: medium_rooms.delete_at(rand(medium_rooms.count)).id)
    LevelRoom.create(level_id: Level.second.id, room_id: medium_rooms.delete_at(rand(medium_rooms.count)).id)
    LevelRoom.create(level_id: Level.second.id, room_id: hard_rooms.delete_at(rand(hard_rooms.count)).id)

    LevelRoom.create(level_id: Level.third.id, room_id: hard_rooms.delete_at(rand(hard_rooms.count)).id)
    LevelRoom.create(level_id: Level.third.id, room_id: hard_rooms.delete_at(rand(hard_rooms.count)).id)
    LevelRoom.create(level_id: Level.third.id, room_id: hard_rooms.delete_at(rand(hard_rooms.count)).id)
  end

  def randomize_items(floor)
    items_in_room_count = 0
    filled_rooms = 0
    rooms = []
    all_items = []
    LevelRoom.where(level_id: floor.id).each{|level_room| rooms << level_room.room}

    rooms.each do |room| 
      room.items.each do |item|
        all_items << item
      end
    end

    all_items.count.times do
      case filled_rooms
      when 0
        RoomItem.create(item_id: all_items.delete_at(rand(all_items.count)).id, room_id: rooms[0].id)
        items_in_room_count += 1
        if items_in_room_count == rooms[0].max_items
          filled_rooms += 1
          items_in_room_count = 0
        end
      when 1
        RoomItem.create(item_id: all_items.delete_at(rand(all_items.count)).id, room_id: rooms[1].id)
        items_in_room_count += 1
        if items_in_room_count == rooms[1].max_items
          filled_rooms += 1
          items_in_room_count = 0
        end
      when 2
        RoomItem.create(item_id: all_items.delete_at(rand(all_items.count)).id, room_id: rooms[2].id)
        items_in_room_count += 1
        if items_in_room_count == rooms[2].max_items
          filled_rooms += 1
          items_in_room_count = 0
        end
      end
    end
    
  end

end