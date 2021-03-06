#open "unix";;

let open_graph arg =
  signal SIGIO (Signal_handle sigio_handler);
  raw_open_graph arg;;

let close_graph () =
  signal SIGIO Signal_ignore;
  raw_close_graph ();; 

let rgb r g b = (r lsl 16) + (g lsl 8) + b;;

let black   = 0x000000
and white   = 0xFFFFFF
and red     = 0xFF0000
and green   = 0x00FF00
and blue    = 0x0000FF
and yellow  = 0xFFFF00
and cyan    = 0x00FFFF
and magenta = 0xFF00FF
;;

let background = white
and foreground = black
;;

let draw_ellipse x y rx ry = draw_arc x y rx ry 0 360;;

let draw_circle x y r = draw_arc x y r r 0 360;;

let fill_ellipse x y rx ry = fill_arc x y rx ry 0 360;;

let fill_circle x y r = fill_arc x y r r 0 360;;

let set_text_size sz = ();;

let transp = -1;;

let get_image x y w h =
  let image = create_image w h in
  blit_image image x y;
  image;;

let mouse_pos () =
  let e = wait_next_event [Poll] in (e.mouse_x, e.mouse_y);;

let button_down () =
  let e = wait_next_event [Poll] in e.button;;

let read_key () =
  let e = wait_next_event [Key_pressed] in e.key;;

let key_pressed () =
  let e = wait_next_event [Poll] in e.keypressed;;
