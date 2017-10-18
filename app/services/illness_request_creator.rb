class IllnessRequestCreator

  def initialize(patient, params)
    @illness_request = patient.illness_requests.build(params)
  end

  def run
    publish if @illness_request.save
    @illness_request
  end

  def publish
    Hutch.connect
    Hutch.publish('illness.request.new', subject: @illness_request.id)
  end
end
