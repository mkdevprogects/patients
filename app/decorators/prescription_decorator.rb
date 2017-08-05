class PrescriptionDecorator < Draper::Decorator
  include HasHumanDate

  delegate_all
end
