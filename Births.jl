
export countBirths

function countBirths(pop)
    number_of_births = 0
    
    for i in 1:length(pop.generations)
        # Check if the generation can breed
        if ableToBreed(pop.generations[i])
            number_of_births += countGenerationBirths(pop.generations[i])
        end
    end
    return number_of_births
end

function ableToBreed(generation)
    if generation.age >= minBreedingAge && generation.age <= maxBreedingAge
        return true
    end
    return false
end

function countGenerationBirths(generation)
    births = 0
    
    if generation.females*chanceOfBirth < 0.5
        for i in 1:generation.females
            if rand() < chanceOfBirth
                births += 1
            end
        end
    else
        births = chanceOfBirth*generation.females
        births = convert(Int64,round(births))
    end
    
    return births
end
