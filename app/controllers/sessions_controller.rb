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

  end

  private
  def randomize_rooms
    easy_room = Room.find_by(music_path: '1')
    medium_rooms = Room.where(music_path: '2')
    hard_rooms = Room.where(music_path: '3')

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

  def randomize_items

  end

end