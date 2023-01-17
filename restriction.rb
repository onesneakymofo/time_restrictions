class Restriction
  attr_accessor :days

  def initialize
    @days = []
  end

  def pretty_list
    list.join("\n")
  end

  private

  def list
    grouped_days = group_days(days)
    grouped_days.map do |day_group|
      if day_group.count > 1
        joiner = day_group.count == 2 ? ', ' : ' - '
        "#{[day_group.first.name, day_group.last.name].join(joiner)}: #{day_group.first.start_time} - #{day_group.first.end_time}"
      else
        day_group.map do |day|
          "#{day.name}: #{day.start_time} - #{day.end_time}"
        end
      end
    end
  end


  def group_days(days)
    grouped_days = []
    current_group = []
    days.each_with_index do |day, i|
      next_day = days[i + 1]
      current_group << day
      if i == days.length - 1 || (day.start_time != next_day.start_time || day.end_time != next_day.end_time)
        grouped_days << current_group
        current_group = []
      end
    end
    grouped_days
  end
end