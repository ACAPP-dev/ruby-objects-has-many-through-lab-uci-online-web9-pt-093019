class Appointment
  attr_accessor :date, :patient, :doctor
  @@all = []

  def initialize(patient, date, doctor)
    @patient, @date, @doctor = patient, date, doctor
    @@all << self
  end

  def self.all
    @@all
  end



end
