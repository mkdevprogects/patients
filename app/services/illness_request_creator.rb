class IllnessRequestCreator

  attr_reader :illness_request

  def initialize(patient, params)
    @illness_request = patient.illness_requests.build(params)
  end

  def run
    if @illness_request.save
      Hutch.connect
      Hutch.publish('illness.request.new', subject: @illness_request.id)
    end
    @illness_request
  end
end

