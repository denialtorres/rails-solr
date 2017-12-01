class PlayerSearchController < ApplicationController
  def new_search

  end

  def search_players
    # OLD WAYS
    #@players = Player.where("first_name like ?", "%#{search_params[:term]}%")

    @search = Player.search() do |searcher|
      searcher.fulltext search_params[:term]
    end

    @players, @total = @search.results, @search.total
    render 'player_search/new_search'
  end

  def search_params
    params.permit( :term, :position, :country, :active_only, :authenticity_token)
  end
end
