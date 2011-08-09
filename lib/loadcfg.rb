require 'yaml'

module LoadCfg

  def self.included(base)
    base.extend ClassMethods
  end
    
  module ClassMethods
    def loadconfig(yaml_file_name)
      loaded_yaml = YAML.load_file(Rails.root.join("config/#{yaml_file_name}.yml"))[Rails.env]
      loaded_yaml.keys.each do |key|
        self.const_set("#{[yaml_file_name, '_', key].join.upcase}", loaded_yaml[key]) 
      end
    end
  end
end

class Object
  include LoadCfg
end