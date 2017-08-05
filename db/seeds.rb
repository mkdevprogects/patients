Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

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

illnesses = [
    {
        patient_id: Patient.find(1).id,
        doctor_id: Doctor.find(1).id,
        symptoms: [Symptom.find(1), Symptom.find(2)],
        visits: [Visit.find(1), Visit.find(2), Visit.find(3)],
        prescriptions: [Prescription.find(1), Prescription.find(2),Prescription.find(3), Prescription.find(4)],
        diseases: [Disease.find(1)]
    },
    {
        patient_id: Patient.find(1).id,
        doctor_id: Doctor.find(2).id,
        symptoms: [Symptom.find(1), Symptom.find(2)],
        visits: [Visit.find(4), Visit.find(5), Visit.find(6)],
        prescriptions: [Prescription.find(5), Prescription.find(6),Prescription.find(7), Prescription.find(8)],
        diseases: [Disease.find(32)]
    }
]

illnesses.each do |params|
    Illness.create!(params)
end