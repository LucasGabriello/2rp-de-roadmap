use work_dataeng

create table generation_lucas(
generation      int,
date_introduced date
)STORED AS ORC;

create table pokemon_lucas(
idnum           int,
name            string,
hp              int,
speed           int,
attack          int,
special_attack  int,
defense         int,
special_defense int,
generation      int
)STORED AS ORC;