class MonstersController < ApplicationController
  def view
    @monsters = Monster.all
  end
end
