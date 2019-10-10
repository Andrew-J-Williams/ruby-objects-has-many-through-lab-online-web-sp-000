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

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
   apts = Appointment.all

   apts.select {|appoint| appoint.patient}
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end

end
