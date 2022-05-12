class Appointment < ActiveRecord::Base
    belongs_to :patient
    belongs_to :physical_therapist

    def self.fetchable_obj
        Appointment.all.map do |appt|
            fetch_appt = {
                id: appt.id,
                patient: appt.patient[:name],
                day: appt.day,
                apptTimeStart: appt.appt_start,
                apptTimeEnd: appt.appt_end,
                checkedIn: appt.checked_in,
                pt: appt.physical_therapist[:name],
                exercises: appt.exercises,
                notes: appt.notes,
                label: appt.label
            }
        end
    end
end