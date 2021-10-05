def  playing_with_words(languages, dictionary)
    selected = languages.reject {|k| k == :en} 
    lines = selected.map do |key, name|
        hash = dictionary[key]
        palabras = hash.map {|k, v| "#{k} means #{v}"}
        "In #{name}, #{palabras.join(", ")}." 
    end
    result = lines.join(" ")
    return result
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

#In German, one means eins, two means zwei, three means drei. In Spanish, one means uno, two means dos, three means tres.
