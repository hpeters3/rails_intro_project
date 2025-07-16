class CharactersController < ApplicationController
  def view
    @characters = Character.all
  end
end
