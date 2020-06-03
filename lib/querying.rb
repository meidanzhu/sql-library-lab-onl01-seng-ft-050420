def select_books_titles_and_years_in_first_series_order_by_year
  #books.title books.year book.series_id = 1 ODER BY books.year
  "SELECT books.title, books.year
  FROM books
  WHERE books.series_id = 1
  ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  #characters.name characters.motto limit 1
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY characters.motto LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  #count(characters.species) group by desc limit 1
  "SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY species DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  #authors.name subgenre.name series INNER JOIN
  "SELECT authors.name, subgenres.name
  FROM series
  INNER JOIN authors ON series.author_id = authors.id
  INNER JOIN subgenres ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  #series.title character.species INNER JOIN series, author WHERE species = human limit 1
  "SELECT series.title FROM series
  JOIN characters ON series.id = characters.series_id
  WHERE characters.species = 'human' LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  #characters.name character_books.book_id COUNT
  "SELECT characters.name, COUNT(character_books.character_id)
  FROM characters
  INNER JOIN character_books ON characters.id = character_books.character_id
  GROUP BY characters.name ORDER BY COUNT(characters.id) DESC"
end
