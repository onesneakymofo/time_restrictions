require './restriction.rb'
require './day.rb'

restriction = Restriction.new
restriction.days << Day.new("Monday", "12:00", "5:00")
restriction.days << Day.new("Tuesday", "1:00", "5:00")
restriction.days << Day.new("Wednesday", "12:00", "5:00")
restriction.days << Day.new("Thursday", "12:00", "5:00")
restriction.days << Day.new("Friday", "12:00", "5:00")
restriction.days << Day.new("Saturday", "1:00", "4:00")
restriction.days << Day.new("Sunday", "1:00", "4:00")
restriction.pretty_list


# Monday: 12:00 - 5:00
# Tuesday: 1:00 - 5:00
# Wednesday - Friday: 12:00 - 5:00
# Saturday, Sunday: 1:00 - 4:00