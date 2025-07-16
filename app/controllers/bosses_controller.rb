class BossesController < ApplicationController
  def view
    @bosses = Boss.all
  end
end
