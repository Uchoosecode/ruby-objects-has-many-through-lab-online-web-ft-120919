

class Patient
  
  attr_accessor :name, :appointment, :doctor
  
  def initialize(name)
    @name = name
  end
    
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  
end