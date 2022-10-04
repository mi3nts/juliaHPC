function factorialFunction(num::Int64)
     if num < 0
        print("Factorial does not exist for negative numbers")
     elseif num == 0
        return 1
     else
        return num*factorialFunction(num - 1)    
     end
end

answer = factorialFunction(7)
println("The 7th Factorial Number is:" * string(answer))


