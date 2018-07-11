def fun_hash
  {
    name: "Prince",
    role: "Instructor",
    classes: [
      "Module 1", "Module 2"
    ]
  }
end



def name_of_person
  fun_hash[:name]
end

def role_of_person
  fun_hash[:role]
end

# Classes:
# Module 1
# Module 2

def classes_of_person
  puts "Classes:"
  fun_hash[:classes].each do |mod|
    puts mod
  end
  # "[lights, cameras]"
  # "lights, cameras"
  
  fun_hash.each do |key, val|
    puts key
    puts val
  end
  
  
  # fun_hash.each do |key, val|
  #   if key == classes:
  #   puts key
  #   puts val
  # end
  # end
end