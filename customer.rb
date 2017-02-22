class Customer
  def initialize(first, last)
    @first = first.strip
    @last = last.strip
  end

  def full_name
    if @last == ''
      @first
    else
      "#{@first} #{@last}"
    end
  end
end
