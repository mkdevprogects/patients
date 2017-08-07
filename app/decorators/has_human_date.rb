module HasHumanDate
  def human_created_at
    date(object.created_at)
  end

  def human_date_time
    date(object.date_time)
  end

  def human_first_occurence_date
    date(object.first_occurence_date)
  end

  private

  def date date
    date.strftime("%d - %m - %Y")
  end
end