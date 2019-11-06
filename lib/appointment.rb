class Appointment
  attr_accessor :appt
  @@all = []

  def initialize(appt)
    @appt = appt
    @@all << self
  end

  def self.all
    @@all
  end
  


end
