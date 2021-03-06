class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "Stephanie's Cool Website"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to hey_path
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] != "bitmaker"
      flash[:alert] = "Sorry, that is not the correct magic word"
      redirect_to hey_path
    end
  end

end
