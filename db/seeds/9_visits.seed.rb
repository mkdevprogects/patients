visits = [
{
    date_time: '2017-08-03 11:44:23 UTC',
    doctor_id: Doctor.find(1).id,
    clinic_id: Clinic.find(1).id,
},
    {
        date_time: '2017-07-03 11:44:23 UTC',
        doctor_id: Doctor.find(1).id,
        clinic_id: Clinic.find(1).id,
    },
    {
        date_time: '2017-07-13 11:44:23 UTC',
        doctor_id: Doctor.find(1).id,
        clinic_id: Clinic.find(1).id,
    },
    {
        date_time: '2017-08-01 11:44:23 UTC',
        doctor_id: Doctor.find(2).id,
        clinic_id: Clinic.last.id,
    },
    {
        date_time: '2017-05-03 11:44:23 UTC',
        doctor_id: Doctor.find(2).id,
        clinic_id: Clinic.last.id,
    },
    {
        date_time: '2017-07-13 11:44:23 UTC',
        doctor_id: Doctor.find(2).id,
        clinic_id: Clinic.last.id,
    }
]

visits.each do |params|
  Visit.create!(params)
end
