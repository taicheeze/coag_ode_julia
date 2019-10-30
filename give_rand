function give_rand_p(p_range,p_fixed=nothing,indices=nothing)
    if p_fixed == nothing
        p = [(p_range[j][2] -p_range[j][1])*rand() + p_range[j][1] for j in 1:length(p_range)]
    else
        p =  zeros(length(p_range))
        j = 1
        for i in 1:length(p_range)
            if i in indices
                p[i] = p_fixed[j]
                j += 1
            else
                p[i] = (p_range[i][2] -p_range[i][1])*rand() + p_range[i][1]
            end
        end
    end
    p
end
