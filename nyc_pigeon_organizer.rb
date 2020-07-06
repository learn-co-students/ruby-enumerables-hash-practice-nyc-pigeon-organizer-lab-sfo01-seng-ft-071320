require 'pry'

def nyc_pigeon_organizer(data)
  # write your code heure!
  pigeons = {}
  data.each do |category, cat_values|
    cat_values.each do |value, pigeon_list|
      pigeon_list.each do |pigeon|
        if !pigeons.keys.include? pigeon
          pigeons[pigeon] = {}
        end
        
        if pigeons[pigeon][category].nil?
          pigeons[pigeon][category] = []
        end
        
        # "Theo" => {
        #   :color => [],
        #   :gender => [],
        #   :lives => [],
        #}
        
        pigeons[pigeon][category] << value.to_s
      end
    end
  end
  pigeons
end
