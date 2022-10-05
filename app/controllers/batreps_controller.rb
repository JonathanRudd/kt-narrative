class BatrepsController < ApplicationController
  def index
    @batreps = Batrep.all
  end

  def show
    @batrep = Batrep.find(params[:id])
  end

  def new
    @batrep = Batrep.new
  end

  def create

  end
end
