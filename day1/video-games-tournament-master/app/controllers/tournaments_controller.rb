class TournamentsController < ApplicationController
  def index
    @players = Player.all
  end
end
