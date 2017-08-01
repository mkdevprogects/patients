class DiseasesController < BaseController
  def index
    @diseases = Disease.all
  end

  def show
    @disease = Disease.find(params[:id])
  end
end
