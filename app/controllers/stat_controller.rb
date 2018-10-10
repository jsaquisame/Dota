class StatController < ApplicationController
  def index
    @list_stat = Stat.all
    @hero = Hero.all
    # @show_hero2 = Hero.find(params[:id])
  end

  def show
    
  end
end
