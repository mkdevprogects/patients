class IllnessesController < BaseController
  def index
    @illnesses = IllnessDecorator.decorate_collection(current_patient.illnesses)
  end

  def show
    @illness = Illness.find(params[:id]).decorate
  end
end
