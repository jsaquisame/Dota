class HeroController < ApplicationController
  def index
    @list_hero = Hero.all
  end

  def show
    @show_hero2 = Hero.find(params[:id])
  end
end
