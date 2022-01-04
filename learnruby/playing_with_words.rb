#Devuelve pares palabra, traduccion
def words(dictionary, language_id)
    #hash with words association
    translation = dictionary[language_id].map do |key, value|
                    "#{key} means #{value}"
    end
    translation.join(", ")
end

def  playing_with_words(languages, dictionary)
    "In #{languages[:de]}, #{words(dictionary,:de)}. In #{languages[:es]}, #{words(dictionary,:es)}."
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

