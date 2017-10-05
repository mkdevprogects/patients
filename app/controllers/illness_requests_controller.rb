class IllnessRequestsController < ApplicationController
  def new
    @symptoms = Symptom.all
    @illness_request = IllnessRequest.new
  end

  def create
    @illness_request = IllnessRequest.new(illness_request_params)
    if @illness_request.save
      redirect_to :home_index, notice: 'Заявка успешно создана.'
    else
      render :new
    end
  end

  private

  def illness_request_params
    params.require(:illness_request).permit(:admissible_cost, :allowable_reception_time, :distance, symptom_ids: [])
  end
end
