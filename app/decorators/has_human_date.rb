module HasHumanDate
  def human_created_at
    date(object.created_at)
  end

  def human_date_time
    date(object.date_time)
  end

  private

  def date date
    date.strftime("%d - %m - %Y")
  end
end