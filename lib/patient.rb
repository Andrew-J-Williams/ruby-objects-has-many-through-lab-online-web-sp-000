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

  def appointments
    Appointment.all.select {|apts| apts.patient == self}
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

end
