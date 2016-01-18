class PassionsController < ApplicationController
  def index
    @passions = Passion.all
  end

  def show
    @passion = Passion.find(params[:id])
  end
end
