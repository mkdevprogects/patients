def email
  "qwerty#{rand(1000)}@gmail.com"
end

def patient_sign_in
  redirect_to('/patient/sign_in')
end
