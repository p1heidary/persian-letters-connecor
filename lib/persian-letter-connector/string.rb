class String
  def connect_persian_letters
    PersianLetterConnector.transform(self)
  end
end
