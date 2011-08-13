require 'yaml'

module LoadCfg

  def self.included(base)
    base.extend ClassMethods
  end
    
  module ClassMethods
    def loadconfig(yaml_file_name, options = {})
      environment = (options[:environment] || Rails.env).to_s
      loaded_yaml = YAML.load_file(Rails.root.join("config/#{yaml_file_name}.yml"))[environment]
      if loaded_yaml.present?
        loaded_yaml.keys.each do |key|
          self.const_set("#{[yaml_file_name, '_', key].join.upcase}", loaded_yaml[key]) 
        end
      else
        raise "Data not found on enviroment: '#{environment}'" unless options[:ignore_not_found]
      end
    end
  end
end

class Object
  include LoadCfg
end