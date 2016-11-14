def begins_with_r(array)
  yay = true
  array.each do |word|
    yay = false if word[0] != "r"
  end
  yay
end

def contain_a(array)
  new_array = []
  array.each do |word|
    new_array << word if word.include?("a")
  end
  new_array
end

def remove_non_strings(array)
  new_array = []
  array.each do |word|
    new_array << word if word.is_a?(String)
  end
  new_array
end

def first_wa(array)
  array.each do |word|
    if word.to_s.start_with?("wa")
      return word
    end
  end
end

def count_elements(array)
  array.each do |new_hash|
    new_hash[:count] = 0
    name = new_hash[:name]
    array.each do |next_hash|
      if next_hash[:name] == name
        new_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  new_structure = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        new_person = person_data[name]
        new_person[:first_name] = name
        new_structure << new_person
      end
    end
  end
  new_structure
end

def find_cool(array)
  hold_onto = []
  array.each do |element|
    hold_onto << element if element[:temperature] == "cool"
  end
  hold_onto
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
