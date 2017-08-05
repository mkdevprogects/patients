class VisitDecorator < Draper::Decorator
  include HasHumanDate

  delegate_all

  def date_time
    date_time.strftime("%d - %m - %Y")
  end
end
