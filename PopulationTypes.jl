export Generation, People

type Generation
    age :: Int64
    size :: Int64
    males :: Int64
    females :: Int64
    
    function Generation(age, size, males, females)
        return new(age, size, males, females)
    end
    
    function Generation(total::Int64)
        number_of_females = convert(Int64,round(0.5*total))
        
        return new(0,total, total - number_of_females, number_of_females)
    end
end

type People
    
    generations :: Array{Generation,1}
    
    function People()
        return new(Array(Generation,1))
    end
    
end
