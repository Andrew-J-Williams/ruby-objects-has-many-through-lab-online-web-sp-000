class Appointment

  attr_accessor :date, :doctor, :patient

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    doctor.add_appointment
    @@all << self
  end

  def self.all
    @@all
  end

  def doctor


end
