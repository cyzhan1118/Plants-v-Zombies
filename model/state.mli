type state = {tiles: (Tile.tile array) array; sunlight: int}

type objects = {zombies: Object.zombie list; plants: Object.plant list; projectiles: Object.projectile list}

(* [init_state col row] is the initial state with col columns and row rows. *)
val init_state : int -> int -> state

(* Returns the number of sunlight. *)
val get_sunlight : state -> int

(* Update all the tiles by one move *)
val update: state -> unit

(* Returns the objects in the state *)
val get_objects: state -> objects

(* Returns the coordinates of the object *)
val get_coordinates: Object.object -> int*int

(* Updates the state with a new plant at coordinates (x, y) *)
val make_plant: Object.shooter -> int -> int -> unit

(* Updates sthe state with a new zombie at coordinates (x, y) *)
val make_zombie: Object.mummy -> int -> int -> unit

(* Updates the state with one more sunlight *)
val increase_sunlight: state -> unit
