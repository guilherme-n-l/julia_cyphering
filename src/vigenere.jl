const ALPHABET = [Int('A'):Int('Z');]

function _vigenere(v, k, op)
    return String(map(enumerate(v)) do (i, c)
        (Int(c) in ALPHABET
        ? Char(
        mod(
        op((Int(c) - Int('A')), Int(k[mod(i - 1, length(k)) + 1]) - Int('A')),
        length(ALPHABET)) + Int('A')
        )
        : c)
    end)
end

function vigenere_encode(msg, k)
    return _vigenere(msg, k, +)
end

function vigenere_decode(cypher, k)
    return _vigenere(cypher, k, -)
end
