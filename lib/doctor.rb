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
    Appointment.new(date, , self)
  end

  def patients



  end

end
