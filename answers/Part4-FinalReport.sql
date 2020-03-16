/* Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer. You may interpret strongest in whatever way you want, but you will have to explain your decision. */
/* The pokemon were sorted first by level (descending order) and then by maxhp (also descending order */

SELECT
    pokemons.name as pokemon_name,
    trainers.trainername as trainer_name,
    pokemon_trainer.pokelevel as pokemon_level,
    pt.name as primary_type_name,
    st.name as secondary_type_name
    FROM pokemon_trainer
    JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
    JOIN pokemons ON pokemons.id = pokemon_trainer.pokemon_id
    JOIN types as pt ON pokemons.primary_type = pt.id
    JOIN types as st ON pokemons.secondary_type = st.id
    ORDER BY pokemon_trainer.pokelevel DESC,
    pokemon_trainer.maxhp DESC;
