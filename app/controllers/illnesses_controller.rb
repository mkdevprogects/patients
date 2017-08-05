class IllnessesController < BaseController
  def show
    @illness = Illness.find(params[:id]).decorate
  end
end
