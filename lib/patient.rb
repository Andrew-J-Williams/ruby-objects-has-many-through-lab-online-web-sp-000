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
   Appointment.all
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end



end
