def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year FROM books INNER JOIN series ON Books.series_id = Series.id WHERE Series.id = 1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto FROM characters WHERE LENGTH(Characters.motto) = 33"
  # "SELECT Characters.name, Characters.motto, MAX(LENGTH(Characters.motto)) FROM characters GROUP BY Characters.name"
end

def select_value_and_count_of_most_prolific_species
  "SELECT TOP species, COUNT(species) FROM characters GROUP BY species"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
end

def select_character_names_and_number_of_books_they_are_in
  # "SELECT Characters.name, Books.title FROM characters LEFT JOIN books ON Characters.series_id = Books.series_id GROUP BY Characters.name, COUNT(books.title);"
end
