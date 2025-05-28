const ALPHABET = [Int('A'):Int('Z');]

function _cesar(v, k, op)
    return map(
    (c) -> (Int(c) in ALPHABET
    ? Char(mod(op((Int(c) - Int('A')), k), length(ALPHABET)) + Int('A'))
    : c),
    v
    )
end

function cesar_encode(msg, k)
    return _cesar(msg, k, +)
end

function cesar_decode(cypher, k)
    return _cesar(cypher, k, -)
end
