BEGIN;

TRUNCATE
  users,
  recipes,
  ingredients,
  instructions,
  notes
  RESTART IDENTITY CASCADE;

INSERT INTO users (email, first_name, last_name, password)
VALUES
  (
    'admin@gmail.com',
    'Admin',
    'User',
    '$2a$12$Ab0ZctIwib97q8ECbNo/tuUYlfTZrSbfiwQ35Opv2tZxlYwRndJU.'
    -- P@ssword111
  )
;

INSERT INTO recipes (title, description, prep_time, cook_time, total_time, yield_min, yield_max)
VALUES
  (
    'Best Vanilla Cake',
    'With its outstanding vanilla flavor, pillowy soft crumb, and creamy vanilla buttercream, this is truly the best vanilla cake I’ve ever had. Make sure you read through the recipe and recipe notes before beginning.',
    '35 minutes',
    '25 minutes',
    '4 hours',
    '12',
    '14'
  )
  ;

  INSERT INTO ingredients (ingredient_name, ingredient_volume, display_order, recipe_id)
  VALUES
    (
      'cake flour',
      '3 2/3 cups',
      1,
      1
    ),
    (
      'salt',
      '1 teaspoon',
      2,
      1
    ),
    (
      'baking powder',
      '1 teaspoon',
      3,
      1
    ),
    (
      'baking soda',
      '3/4 teaspoon',
      4,
      1
    ),
    (
      'unsalted butter, softened to room temperature',
      '1 1/2 cups',
      5,
      1
    )
    ;

    INSERT INTO instructions (instruction_shorttext, instruction_longtext, display_order, recipe_id)
    VALUES
    (
      'Make the cake',
      'Whisk the cake flour, salt, baking powder, and baking soda together. Add other stuff. Pour into pan',
      1,
      1
    ),
    (
      'Bake the cake',
      'Bake for around 23-26 minutes or until the cakes are baked through.',
      2,
      1
    ),
    (
      'Eat the cake',
      'Grab a fork and eat that cake. Mmm...  it is delicious af!',
      3,
      1
    )
    ;

    INSERT INTO notes (note_shorttext, note_longtext, display_order, recipe_id)
    VALUES
    (
      'Buttermilk',
      'If you don’t have buttermilk, you can make a DIY sour milk substitute.',
      1,
      1
    ),
    (
      'Eggs',
      '3 whole eggs provide structure, moisture, and richness. 2 extra egg whites keep the cake light and airy. I don’t recommend using 4 whole eggs; stick to the 3 egg & 2 egg white combination. Here are recipes using leftover egg yolks.',
      2,
      1
    )
    ;

    COMMIT;