class UniversesController < ApplicationController
  before_action :find_universe, only: [:show]

  def index
    @universes = Universe.all
  end

  def show
  end

  private

  def find_universe
    @universe = Universe.find(params[:id])
  end
end
