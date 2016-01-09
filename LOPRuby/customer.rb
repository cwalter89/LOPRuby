class Customer

  def initialize(firstName = nil, lastName = nil)
    @firstName = firstName
    @lastName = lastName
  end

  def Customer.SampleClassMethod()
    #do stuff
  end

  def setFirstName(firstName)
    @firstName = firstName
  end

  def getFirstName()
    return @firstName
  end

  def setLastName(lastName)
    @lastName = lastName
  end

  def getLastName()
    return @lastName
  end

end