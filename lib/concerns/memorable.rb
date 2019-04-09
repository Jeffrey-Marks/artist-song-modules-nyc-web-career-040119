module Memorable
  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end

    def initialize
      self.class.all << self
    end

    attr_accessor :name
  end


  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

    # def all
    #   self.class.all
    # end
  end
end
