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
    Hutch.publish(Settings.illness_request_topic, subject: @illness_request.id)
  end
end
