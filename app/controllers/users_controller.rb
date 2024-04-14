class UsersController < ApplicationController
  def show
    @user = User.find_by!(username: params.fetch(:username))
  end

  def liked
    @user = User.find_by!(username: params.fetch(:username))
  end

  def feed
    @user = User.find_by!(username: params.fetch(:username))
  end

  def followers
    @user = User.find_by!(username: params.fetch(:username))
    @followers = @user.followers
  end

  def following
    @user = User.find_by!(username: params.fetch(:username))
    @following = @user.leaders
  end

end
