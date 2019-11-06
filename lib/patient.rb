require 'pry'
class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select{|appt_instance| appt_instance.patient == self}
  end

  def doctors
    appointments.collect{|appt_instance| appt_instance.doctor}
  end
end
