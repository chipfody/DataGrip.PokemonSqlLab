/* What is each pokemon's primary type? */
SELECT pokemons.id, pokemons.name, pokemons.primary_type FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id;

/* What is Rufflet's secondary type? */
SELECT pokemons.id, pokemons.name, types.name FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id WHERE pokemons.name = "Rufflet";

/* What are the names of the pokemon that belong to the trainer with trainerID 303? */
SELECT pokemons.name FROM pokemons INNER JOIN pokemon_trainer ON pokemon_trainer.pokemon_id = pokemons.id WHERE pokemon_trainer.trainerID = 303;

/* How many pokemon have a secondary type Poison */
SELECT COUNT(*) AS TOTAL FROM pokemons JOIN types ON pokemons.secondary_type = types.id WHERE types.name = "poison";

/* What are all the primary types and how many pokemon have that type? */
SELECT types.name, COUNT(*) types FROM types JOIN pokemons ON types.id = pokemons.primary_type GROUP BY name;

/*  How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? */
SELECT trainerID, COUNT(*) FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerID;

/* How many pokemon only belong to one trainer and no other? */
SELECT trainerID, COUNT(pokemon_id) FROM pokemon_trainer GROUP BY trainerID HAVING COUNT(pokemon_id) = 1;
