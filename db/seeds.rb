puts "🌱 Seeding spices..."
Patient.destroy_all
PhysicalTherapist.destroy_all
Appointment.destroy_all

Patient.create(name: 'Bob McGregory', birthday: '04/23/1965', injury: 'Hip')
Patient.create(name: 'Beth Dugle', birthday: '07/09/1972', injury: 'Knee')
Patient.create(name: 'Paul Ghayad', birthday: '10/23/1983', injury: 'Back')
Patient.create(name: 'Ronald McDonald', birthday: '02/13/1954', injury: 'Neck')
Patient.create(name: 'John Doe', birthday: '03/24/1963', injury: 'Shoulder')

PhysicalTherapist.create(name: 'Jacob Logan', birthdate: '03/23/1998')
PhysicalTherapist.create(name: 'Rahaf Alhabashi', birthdate: '04/15/2000')
PhysicalTherapist.create(name: 'Steve Alomia', birthdate: '09/08/1996')
PhysicalTherapist.create(name: 'Mark Bacon', birthdate: '12/25/1992')

Appointment.create(patient_id: 11, day: 1652068800000, appt_start: '9:00 AM', appt_end: '10:00 AM', checked_in: false, physical_therapist_id: 9, exercises: '', notes: '', label: 'indigo')
Appointment.create(patient_id: 12, day: 1653451200000, appt_start: '12:00 PM', appt_end: '1:30 PM', checked_in: false, physical_therapist_id: 11, exercises: '', notes: '', label: 'red')
Appointment.create(patient_id: 13, day: 1652673600000, appt_start: '11:00 AM', appt_end: '1:00 PM', checked_in: false, physical_therapist_id: 10, exercises: '', notes: '', label: 'yellow')
Appointment.create(patient_id: 12, day: 1652760000000, appt_start: '8:00 AM', appt_end: '9:30 AM', checked_in: false, physical_therapist_id: 12, exercises: '', notes: '', label: 'green')
Appointment.create(patient_id: 14, day: 1652760000000, appt_start: '10:00 AM', appt_end: '12:00 PM', checked_in: false, physical_therapist_id: 10, exercises: '', notes: '', label: 'blue')
Appointment.create(patient_id: 15, day: 1652155200000, appt_start: '', appt_end: '', checked_in: false, physical_therapist_id: 11, exercises: '', notes: '', label: 'purple')
Appointment.create(patient_id: 12, day: 1652760000000, appt_start: '1:00 PM', appt_end: '2:00 PM', checked_in: false, physical_therapist_id: 11, exercises: '', notes: '', label: 'green')
Appointment.create(patient_id: 13, day: 1652846400000, appt_start: '11:30 AM', appt_end: '12:30 PM', checked_in: false, physical_therapist_id: 9, exercises: '', notes: '', label: 'indigo')
Appointment.create(patient_id: 11, day: 1652241600000, appt_start: '8:00 AM', appt_end: '10:00 AM', checked_in: false, physical_therapist_id: 12, exercises: '', notes: '', label: 'red')
Appointment.create(patient_id: 13, day: 1651464000000, appt_start: '3:00 PM', appt_end: '4:30 PM', checked_in: false, physical_therapist_id: 10, exercises: '', notes: '', label: 'yellow')
Appointment.create(patient_id: 14, day: 1651550400000, appt_start: '2:00 PM', appt_end: '3:00 PM', checked_in: false, physical_therapist_id: 9, exercises: '', notes: '', label: 'blue')
puts "✅ Done seeding!"
