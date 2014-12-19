require 'byebug'

class Array
  def my_inject(arg = nil,arg2 = nil) 
    if block_given? 
      i = arg == nil ? 1 : 0
      init = arg || self[0]
      while(self[i])
        init = yield init, self[i]
        i += 1
      end
      return init   
    else 
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


  def fun_inject(arg = nil,arg2 = nil) 
    if block_given? 
      i = arg == nil ? 1 : 0
      init = arg || self[0] * self[0]
      while(self[i])
        init = yield init, self[i] ,self[i]*self[i]
        i += 1
      end
      return init   
    else 
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
