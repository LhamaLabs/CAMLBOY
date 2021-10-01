type t [@@deriving show]

val create : echo_flag:bool -> t

val create_with_rom : echo_flag:bool -> rom_bytes:bytes -> t

val run_instruction : t -> unit

val get_frame_buffer : t -> [`White | `Light_gray | `Dark_gray | `Black ] array array

module For_tests : sig

  val prev_inst : t -> Instruction.t

end
