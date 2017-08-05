class IllnessesController < BaseController
  def index
  end

  def show
    @illness = Illness.find(params[:id]).decorate
  end
end
