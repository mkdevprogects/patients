module HasHumanDate
  def human_created_at
    human_date_on(:created_at)
  end

  def human_date_time
    human_date_on(:date_time)
  end

  def human_date_on(field)
    date(send(field))
  end

  private

  def date(date)
    date.strftime("%d - %m - %Y")
  end
end
