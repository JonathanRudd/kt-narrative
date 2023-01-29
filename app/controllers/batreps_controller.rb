class BatrepsController < ApplicationController

  before_action :set_killteam, only: %[new create]

  def new
    @killteam = Killteam.find(params[:killteam_id])
    @batrep = Batrep.new(killteam_id: @killteam.id)
  end

  def create
    @batrep = Batrep.new(batrep_params)
    @batrep.killteam = @killteam
    @batrep.save
    redirect_to killteam_path(@killteam)
  end

  private

  def set_killteam
    @killteam = Killteam.find(params[:killteam_id])
  end

  def batrep_params
    params.require(:batrep).permit(:title, :report, :versus)
  end
end
