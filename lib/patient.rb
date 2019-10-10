class Patient

  attr_accessor :name, :appointment, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date)
    Appointment.new(date, doctor, date)
  end

  def appointments
    Appointment.all.select {|apt| apt.patient == self}
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end

end
