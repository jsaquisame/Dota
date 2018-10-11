class AttackController < ApplicationController
  def index
    @hero = Hero.all
    @list_attack = Attack.all
  end

  def show
  end
end
