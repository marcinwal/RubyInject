require 'byebug'

class Array

  def my_inject(arg = nil) 
      i= arg==nil ? 1 : 0
      arg = arg || self[0]
      while(self[i])
        print arg,' ',self[i]
        arg = yield arg, self[i]
        i +=1
      end
      return arg   
  end

    def my_inject2(arg = nil) 
      i = arg==nil ? 1 : 0
      arg = arg || self[0]
      while(self[i])
        print arg,' ',self[i]
        arg = yield arg, self[i]
        i +=1
      end
      return arg   
  end


end
