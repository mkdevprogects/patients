class VisitDecorator < Draper::Decorator
  include HasHumanDate

  delegate_all
end
