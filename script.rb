def caesar_cipher(string, shift)
    string_to_ascii = string.bytes  #Convert the letters to ASCII Codes
    shifted_integers = string_to_ascii.map do |num|     #Function to shift the ASCII Codes
        if num >= 97 && num <= 122  #For smallcase letters
            if num + shift > 122
                num = 96 + (num + shift - 122)
            elsif num + shift < 97
                num = 123 + (num + shift - 97)
            else
                num = num + shift
            end
        elsif num >= 65 && num <= 90 #For uppercase letters
            if num + shift > 90
                num = 64 + (num + shift - 90)
            elsif num + shift < 65
                num = 91 + (num + shift - 65)
            else
                num = num + shift
            end
        else #For spaces and other characters
            num = num
        end
    end
    p shifted_integers.map { |num| num.chr }.join #Shifting back to encrypted string
end

caesar_cipher("What a string!", 5)


