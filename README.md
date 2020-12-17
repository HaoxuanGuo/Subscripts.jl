# Subscripts.jl

This package is used to convert between normal characters, superscripts, and subscripts (character substitution). Currently it only supports numbers, and there are plans to further support other characters.

However, in fact, not all letters have their corresponding Unicode subscripts and subscripts. Therefore, the implementation of other subscripts and subscripts remains to be discussed.

## Usage

```julia
julia> using Subscripts

julia> super("1234567890")
"¹²³⁴⁵⁶⁷⁸⁹⁰"

julia> sub("1234567890")
"₁₂₃₄₅₆₇₈₉₀"

julia> recover("¹²³⁴⁵⁶⁷⁸⁹⁰₁₂₃₄₅₆₇₈₉₀")
"12345678901234567890"
```
