module HasHumanDate
  def created_at
    created_at.strftime("%d - %m - %Y")
  end
end