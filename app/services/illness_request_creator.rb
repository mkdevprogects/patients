class IllnessRequestCreator

  attr_reader :illness_request

  def initialize(illness_request)
    @illness_request = illness_request
  end

  def run
    if @illness_request.save
      Hutch.connect
      Hutch.publish('illness.request.new', subject: @illness_request.id)
    end
  end
end

