require 'byebug'

class Array
  def my_inject(arg = nil,arg2 = nil) 
    if block_given? 
      i = arg == nil ? 1 : 0
      arg = arg || self[0]
      while(self[i])
        arg = yield arg, self[i]
        i += 1
      end
      return arg   
    else #it should have an operator
      i = arg2 == nil ? 1 : 0
      operator = arg2 == nil ? arg : arg2
      init = arg2 == nil ? self[0] : arg
      while (self[i])
        init = init.send(operator,self[i])
        i += 1
      end  
      return init
    end
  end
end
