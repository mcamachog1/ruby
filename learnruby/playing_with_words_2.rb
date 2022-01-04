#Devuelve lista de palabras del otro idioma
def words(dictionary, language_id)
    translation = dictionary[language_id].map do |key, value|
                    " | #{value.ljust(5," ")}"
    end
    translation.join(" ")
end


def  playing_with_words_2(languages, dictionary)
    result = []
    result << "| de#{words(dictionary,:de)} |"
    result << "| en#{words(dictionary,:en)} |"
    result << "| es#{words(dictionary,:es)} |"
    return result.join("\n")
end

languages = {
    :de => 'German',
    :en => 'English',
    :es => 'Spanish',
}
dictionary = {
    :de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
    :en => { :one => 'one', :two => 'two', :three => 'three' },
    :es => { :one => 'uno', :two => 'dos', :three => 'tres' }
}
words(dictionary,:de)

