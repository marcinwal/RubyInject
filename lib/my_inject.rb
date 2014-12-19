require 'byebug'

class Array

  def my_inject(*args,&code)
      #byebug
      m = args[0] || self[0]
      self.each {|el|}
  end
end
