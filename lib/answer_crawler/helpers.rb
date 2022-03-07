def get_replaced_token(old_token)
    replacements = {
        'a' => 'z', 'b' => 'y', 'c' => 'x', 'd' => 'w',
        'e' => 'v', 'f' => 'u', 'g' => 't', 'h' => 's',
        'i' => 'r', 'j' => 'q', 'k' => 'p', 'l' => 'o',
        'm' => 'n', 'n' => 'm', 'o' => 'l', 'p' => 'k',
        'q' => 'j', 'r' => 'i', 's' => 'h', 't' => 'g',
        'u' => 'f', 'v' => 'e', 'w' => 'd', 'x' => 'c',
        'y' => 'b', 'z' => 'a',

        '0' => '9', '1' => '8', '2' => '7', '3' => '6',
        '4' => '5', '5' => '4', '6' => '3', '7' => '2',
        '8' => '1', '9' => '0'
    }

    new_token = old_token.split ''

    for i in 0...new_token.size
        new_token[i] = replacements.has_key?(new_token[i]) ? 
            replacements[new_token[i]] : new_token[i]
    end

    new_token.join ''
end