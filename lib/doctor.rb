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
    Appointment.all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def patients
    appointment_list = self.appointments

    x = appointment_list.select {|list| list.doctor == self}

    x.map do |y|

  end

end
