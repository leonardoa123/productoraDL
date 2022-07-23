class HomeController < ApplicationController
  def index
  end

  def dashboard
    @bands = Band.order(:name).includes(:concerts)
  end
end
