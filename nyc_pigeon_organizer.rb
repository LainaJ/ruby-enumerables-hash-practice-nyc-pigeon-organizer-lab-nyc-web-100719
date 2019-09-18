def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |categories, value|
    value.each do |attributes, names|
      names.each do |a_name|
        if pigeon_list[a_name] == nil
          pigeon_list[a_name] = {}
        end
        if pigeon_list[a_name][categories] == nil
          pigeon_list[a_name][categories] = []
          # pigeon_list = {Theo => [], Peter J => [], Lucky => [], Ms K, Queenie, Andrew Alex}
        end
          pigeon_list[a_name][categories].push(attributes.to_s)
      end
    end
  end
  pigeon_list
end
