module Envy

  def self.namespace(*selectors)
  
    selectors = [ selectors.to_a ].flatten.map{|s| s.is_a?(Regexp) ? s :  Regexp.new( (s.to_s.upcase + "_").gsub(/_{2,}$/,"_"))}
    
    added_config = {}
  

    selectors.each do |selector|
      
      env_config = {}
    
      ENV.select {|k,v| k =~ selector }.to_a.each do |k|
        env_config[ k[0].gsub(selector,'').to_s.downcase.to_sym ] = k[1]
        env_config[ k[0].gsub(selector,'').to_s.to_sym ] = k[1]
      end
      
      constant_name = selector.to_s.split(":")[-1].to_s.gsub(/^[^a-zA-Z0-9]{1,}|[^a-zA-Z0-9]{1,}$/,'').gsub(/[^a-zA-Z0-9_]+/,'').upcase
      
      self.const_set(constant_name, env_config) unless self.const_defined?(constant_name)
      Kernel.const_set(constant_name, env_config) unless Kernel.const_defined?(constant_name)
      
      added_config[constant_name] =  env_config

    end
  
    added_config

  end

end
