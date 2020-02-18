def ftoc(temp)
    if temp == 32
        return 0
    end
    celcius = (temp - 32.0) / 1.8
    celcius.round()
end

def ctof(temp)
    if temp == 0
        return 32
    end
    farenheight = (temp * 1.8) + 32 
end 
    
