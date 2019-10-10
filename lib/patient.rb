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

  def appointments
   Appointment.all.select {|apts| apts.patient == self}
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end

  def new_appointment(date, doctor)
    Appointment.new(self, doctor, date)
  end



end
