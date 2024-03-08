module Subscripts

export super, sub, recover

_dict_inv(d) = Dict(v=>k for (k,v) in d)

const super_chars = Dict('0'=>'⁰', '1'=>'¹', '2'=>'²', '3'=>'³', '4'=>'⁴', '5'=>'⁵', '6'=>'⁶', '7'=>'⁷', '8'=>'⁸', '9'=>'⁹', '-'=>'⁻')
const   sub_chars = Dict('0'=>'₀', '1'=>'₁', '2'=>'₂', '3'=>'₃', '4'=>'₄', '5'=>'₅', '6'=>'₆', '7'=>'₇', '8'=>'₈', '9'=>'₉')
const recover_chars = _dict_inv(super_chars) ∪ _dict_inv(sub_chars)

function _str_replace(d, s)
    io = IOBuffer()
    for c in s
        write(io, get(d, c, ""))
    end
    String(take!(io))
end

super(s) = _str_replace(super_chars, s)
sub(s) = _str_replace(sub_chars, s)
recover(s) = _str_replace(recover_chars, s)

end # module
