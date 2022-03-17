class Birthday
  def initialize
    @birthday_list = {
      Mary: "May 31st, 1993",
      Mitchell: "June 15th, 1993",
      Kyle: "Jan 27th, 1986", 
      Sally: "March 17th, 1966"
    }
    @todays_date = Time.new
  end
  def birthday_list
    @birthday_list
  end
  def display_birthdays
    @birthday_list.map { |k,v| "#{k}, #{v}\n" }.join("")
  end   
  def todays_birthdays
    date = @todays_date.strftime("%B %dth")
    @birthday_list.values.include?(date) ? "Yes" : "No"
    # @birthday_list.map { |k,v| v.include?(date) } ? { |k,v| "Today is #{k}'s Birthday!"}.join(" ") : ""
  end
end

birthday = Birthday.new
birthday.todays_birthdays