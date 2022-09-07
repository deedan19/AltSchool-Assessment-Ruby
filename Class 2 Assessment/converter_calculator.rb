def convert (parameter, value, from, to)
    weight = "weight"
    distance = "distance"
    temperature = "temperature"
    kg = "kg"
    pound = "pound"
    miles = "miles"
    km = "km"
    celcius = "celcius"
    kelvin = "kelvin"
    
    case parameter 
      # Weight
        when weight 
      puts "Weight Conversion"
      
          if from == kg && to == pound && (value.is_a? Numeric)
            return "#{value}kg is equal to #{(value.to_f * 2.20462).round(2)} pound"
          
        elsif from == pound and to == kg && (value.is_a? Numeric)
            return "#{value}pound is equal to #{(value.to_f * 0.4536).round(2)} kg"
          
        else 
          puts "Error, input only valid weight value or units"
        end
      # Distance
    when distance 
          puts "Distance Conversion"
          if from == miles && to == km && (value.is_a? Numeric)
            return "#{value}miles is equal to #{(value.to_f * 0.6213).round(2)} km"
          
        elsif from == km and to == miles && (value.is_a? Numeric)
            return "#{value}km is equal to #{(value.to_f * 1.60934).round(2)} miles"
          
        else 
          puts "Error, input only valid distance value or units"
        end
      
      # Temperature
    when temperature 
          puts "Temperature Conversion"
           if from == celcius && to == kelvin && (value.is_a? Numeric)
            return "#{value}ºC is equal to #{(value.to_f + 273.15)}ºK"
          
        elsif from == kelvin and to == celcius && (value.is_a? Numeric)
            return "#{value}ºK is equal to #{(value.to_f - 273.15)} ºC"
          
        else 
          puts "Error, input only valid temperature value or units"
        end
      
    else 
      puts "Error, please input the correct parameters or units"
    end
  end
  
  # puts convert "weight", 2, "kg", "pound"
  # puts convert "weight", 10.5, "pound", "kg"
  # puts convert "weight", "ui", "pound", "kg"
  
  # puts convert "distance", 2, "km", "miles"
  # puts convert "distance", 10.5, "miles", "km"
  # puts convert "distance", "ii", "miles", "km"
  
  # puts convert "temperature", "yu","kelvin", "celcius"
  puts convert "temperature", 9, "celcius", "kelvin"
  # puts convert "temperature", 5.7, "kelvin", "celcius"
  