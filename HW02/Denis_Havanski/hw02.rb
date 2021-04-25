module HDArrayMethods
  refine Array do

    def my_map
      if block_given?
        ret_array = []
        for i in 0...self.size
          ret_array << yield(self[i])
        end
        ret_array
      end
    end

    def my_select
      if block_given?
        ret_array = []
        for i in 0...self.size
          if yield(self[i]) == true
            ret_array << self[i]
          end
        end
        ret_array
      end
    end

    def my_each
      if block_given?
        for i in 0...self.size
          yield(self[i])
        end
        self
      end
    end

  end
end

using HDArrayMethods

array = [1,2,3,4,5,6,65]

p array.my_map {|e| e**2 + 3 }

p array.my_select {|e| e.even? == false}

ar_new = []
p array.my_each {|e| ar_new << e.to_s + "!" + "$"}
p ar_new


