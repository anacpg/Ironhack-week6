class Api::TournamentsController < ApplicationController
  def index
    tournaments = Tournament.all
    render json: tournaments
  end

  def create
    tournament = Tournament.create(tournament_params)
    render json: tournament, status: 201
  end

  def tournament_params
	  params.require(:tournament).permit(:name)
	end

  def destroy
    tournament = Tournament.destroy(params[:id])
    render json: tournament
  end

  def add_player
    player = Player.find(params[:id])
    tourney = Tournament.find(params[:tourney_id])
    tourney.players.push(player)
    render json: player
  end
end
