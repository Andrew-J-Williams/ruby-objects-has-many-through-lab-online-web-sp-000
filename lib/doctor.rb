class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Patient.all.select {|date| date.doctor == self}
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

end
