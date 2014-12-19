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


  # def fun_inject(arg = nil,arg2 = nil) 
  #   if block_given? 
  #     i = arg == nil ? 1 : 0
  #     init = arg || self[0] * self[0]
  #     while(self[i])
  #       init = yield init, self[i] ,self[i]*self[i]
  #       i += 1
  #     end
  #     return init   
  #   else 
  #     i = arg2 == nil ? 1 : 0
  #     operator = arg2 == nil ? arg : arg2
  #     init = arg2 == nil ? self[0] : arg
  #     while (self[i])
  #       init = init.send(operator,self[i])
  #       i += 1
  #     end  
  #     return init
  #   end
  # end

  def new_inject(*args,&block)
   if block_given? 
     i = args.size == 0 ? 1 : 0
     init = args[0] || self[0]
     while self[i] 
       init = block.call(init,self[i])
       i += 1
     end
   else
     i = args.size == 1 ? 1 : 0
     operator = args.size == 1 ? args[0] : args[1]
     init = args.size == 1 ? self[0] : args[0]
     while self[i]
      init = init.send(operator,self[i])
      i += 1
     end
   end
   return init
  end  
end
