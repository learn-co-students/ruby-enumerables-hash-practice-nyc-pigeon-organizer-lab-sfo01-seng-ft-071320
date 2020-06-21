def nyc_pigeon_organizer(data)
  
  result = {}

  data.each do |key, value|
      value.each do |inner_value, array_names|
          array_names.each do |name|

              if !result[name]
                  result[name] = {}
              end
              if !result[name][key]
                  result[name][key] = []
              end
              result[name][key].push(inner_value.to_s)
          end
      end
  end
  result
end
