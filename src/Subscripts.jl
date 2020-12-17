module Subscripts

export super, sub, recover

super_chars = ['⁰', '¹', '²', '³', '⁴', '⁵', '⁶', '⁷', '⁸', '⁹']
  sub_chars = ['₀', '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉']

function super(s)
    res = ""
    for c in s
        if c >= '0' && c <= '9'
            res *= super_chars[c - '0' + 1]
        end
    end
    return res
end

function sub(s)
    res = ""
    for c in s
        if c >= '0' && c <= '9'
            res *= sub_chars[c - '0' + 1]
        end
    end
    return res
end

function recover(s::String)
    res = ""
    for c in s
        for i in 1:length(super_chars)
            if c == super_chars[i] || c == sub_chars[i]
                res *= '0' + i - 1
            end
        end
    end
    return res
end

end # module
