class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    self.roster[grade] ||= []
    self.roster[grade] << student
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    # sort the keys first
    # this creates an array, which then must be converted back into
    # a hash
    sorted_roster = Hash[self.roster.sort_by { |k, v| k }]

    # now sort the values
    sorted_roster.keys.each do |k,v|
      sorted_roster[k] = sorted_roster[k].sort
    end

    # return the sorted roster
    sorted_roster
  end

end