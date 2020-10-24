require 'pry'
def nyc_pigeon_organizer(data)
  binding.pry
  organized_hash = data.each_with_object({}) do |(key, value), array|
    binding.pry
    value.each do |inner_key, names|
      binding.pry
      names.each do |name|
        binding.pry
        if !array[name]
          array[name] = {}
          binding.pry
        end
        if !array[name][key]
          array[name][key] = []
          binding.pry
        end
        array[name][key].push(inner_key.to_s)
        binding.pry
      end
    end
  end
end
