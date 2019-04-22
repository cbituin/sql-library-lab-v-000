def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year FROM books INNER JOIN series ON Books.series_id = Series.id WHERE Series.id = 1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto FROM characters WHERE LENGTH(Characters.motto) = 33"
  # "SELECT Characters.name, Characters.motto, MAX(LENGTH(Characters.motto)) FROM characters GROUP BY Characters.name"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species HAVING count(species) ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name FROM series INNER JOIN authors, subgenres ON Series.author_id = Authors.id AND Series.subgenre_id = Subgenres.id GROUP BY Authors.name, Subgenres.name;"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title FROM series INNER JOIN characters ON Series.id = Characters.series_id GROUP BY Series.title LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  # "SELECT Characters.name, Books.title FROM characters LEFT JOIN books ON Characters.series_id = Books.series_id GROUP BY Characters.name, COUNT(books.title);"
  "SELECT Characters.name, Count(Character_books.book_id) as counted FROM characters INNER JOIN Character_books ON Characters.id = Character_books.character_id GROUP BY Characters.name ORDER BY counted DESC "
end
