class UniversesController < ApplicationController
  def index
    @universes = Universe.all
  end

  def show
  end
end
