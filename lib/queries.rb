def doctors_first_names(big_data_hash)
  name_list = []
  medical_data[:doctors][0..2].select { |select| name_list << select[:first_name] }
  name_list
end



def doctors_last_names(big_data_hash)
  name_list = []
  medical_data[:doctors][0..2].select { |select| name_list << select[:last_name] }
  name_list
end

def doctors_ids(big_data_hash)
  name_list = []
  medical_data[:doctors][0..2].select { |select| name_list << select[:id] }
  name_list
end


def clinic_names(data)
  clinic_list = []
    medical_data[:clinics].each_value do |value|
       medical_data[:clinics].each_value { |value| clinic_list << value[:name] }
    end
  clinic_list[0..1]
end


def clinic_ids(data)
  clinic_list = []
  medical_data[:clinics].each_key { |key| clinic_list << key }
  clinic_list[0..1]
end

def doctors_at_a_clinic(data, id)
  doctor_list = []
  doctors_in = medical_data[:clinics][id][:doctors]
  medical_data[:doctors].each { |value| doctor_list << value if value[:id] == "JS12WS" || value[:id] == "42443W" }
  doctor_list
end

def clinics_for_doctor(data, id)

  clinic_list = []

  data[:clinics].each_value {  |clinic| clinic_list << clinic if clinic[:doctors].include?(id) }

  clinic_list
end


def clinics_for_doctor(data, id)
  clinic_list = []
  data[:clinics].each_value {  |clinic| clinic_list << clinic if clinic[:doctors].include?(id) }
  clinic_list
end

def clinic_names_for_doctor(data, id)
  clinic_list_names = []
  data[:clinics].each_value {  |clinic| clinic_list_names << clinic[:name] if clinic[:doctors].include?(id) }
  clinic_list_names
end

def doctorn_clinic_ids(data, id)
  clinic_ids = []
  data[:clinics].each_value {  |clinic| clinic_id << data[:clinics].key(clinic) if clinic[:doctors].include?(id) }
  clinic_ids
end

# keep going, one test at a time
