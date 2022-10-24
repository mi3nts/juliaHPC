

arrayID        = Base.parse(Int, ENV["SLURM_ARRAY_TASK_ID"])
arrayValues    = [7; 8; 9; 10]
factorialIndex = arrayValues[arrayID]

function factorialFunction(num::Int64)
     if num < 0
        print("Factorial does not exist for negative numbers")
     elseif num == 0
        return 1
     else
        return num*factorialFunction(num - 1)    
     end
end

println("The $(factorialIndex)th Factorial Number is: $(factorialFunction(factorialIndex)).")


