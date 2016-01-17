class PassionsController < ApplicationController
  def index
    @passions = Passion.all
  end
end
