const ALPHABET_CHARS = ['A':'Z';]
const ALPHABET = map(Int, ALPHABET_CHARS)
const SUBSTITUTE = "QWERTYUIOPASDFGHJKLZXCVBNM"

function _subs(v, f)
    return map(
    (c) -> (Int(c) in ALPHABET
    ? f(c)
    : c),
    v
    )
end

function subs_encode(msg)
    return _subs(msg, (c) -> SUBSTITUTE[Int(c) - Int('A') + 1])
end

function subs_decode(cypher)
    return _subs(cypher, (c) -> ALPHABET_CHARS[findfirst(isequal(c), SUBSTITUTE)])
end
