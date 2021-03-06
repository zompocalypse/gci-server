CREATE TABLE notes (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  note_shorttext VARCHAR(50) NOT NULL,
  note_longtext VARCHAR(256) NOT NULL,
  display_order INTEGER,
  recipe_id INTEGER REFERENCES recipes(id) ON DELETE CASCADE NOT NULL,
  date_created TIMESTAMPTZ NOT NULL DEFAULT now()
)