class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    appointments = Appointment.fetchable_obj
    
    appointments.to_json
  end

  post "/" do
    appt = Appointment.create(
      id: params[:id],
      patient: Patient.find_by(name: params[:patient]),
      day: params[:day],
      appt_start: params[:apptTimeStart],
      appt_end: params[:apptTimeEnd],
      checked_in: params[:checkedIn],
      physical_therapist: PhysicalTherapist.find_by(name: params[:pt]),
      exercises: params[:exercises],
      notes: params[:notes],
      label: params[:label]
    )

    appt.to_json
  end

  patch "/:id" do 
    appt = Appointment.find(params[:id])

    appt.update(
      id: params[:id],
      patient: Patient.find_by(name: params[:patient]),
      day: params[:day],
      appt_start: params[:apptTimeStart],
      appt_end: params[:apptTimeEnd],
      checked_in: params[:checkedIn],
      physical_therapist: PhysicalTherapist.find_by(name: params[:pt]),
      exercises: params[:exercises],
      notes: params[:notes],
      label: params[:label]
    )

    appt.to_json
  end

  delete "/:id" do 
    appt = Appointment.find(params[:id])

    appt.destroy

    appt.to_json
  end

end
