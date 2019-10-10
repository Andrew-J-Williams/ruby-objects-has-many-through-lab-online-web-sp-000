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
    Appointment.all.select
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    apts = self.appointments

    apts.map do |appointment|
      appointment.patient
    end
  end

end
