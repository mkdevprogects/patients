class IllnessRequestCreator

  def initialize(illness_request_id)
    Hutch.connect
    Hutch.publish('illness.request.new', subject: illness_request_id)
  end
end

