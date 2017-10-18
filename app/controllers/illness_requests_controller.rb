class IllnessRequestsController < BaseController
  after_action set_illness_request_id_to_system, only: [:create]

  def index
    @illness_requests = current_patient.illness_requests
  end

  def show
    @illness_request = IllnessRequest.find(params[:id])
  end

  def new
    @symptoms = Symptom.all
    @illness_request = IllnessRequest.new
  end

  def create
    @illness_request = current_patient.illness_requests.build(illness_request_params)
    if @illness_request.save
      redirect_to @illness_request, notice: t('notices.illness_request')
    else
      render :new
    end
  end

  private

  def illness_request_params
    params.require(:illness_request).permit(
        :admissible_cost,
        :allowable_reception_time,
        :distance,
        :patient_id,
        symptom_ids: []
    )
  end

  def set_illness_request_id_to_system
    Services::IllnessRequestCreator.new(IllnessRequest.last.id)
  end
end
