CREATE ROLE listener_nursultan LOGIN PASSWORD 'nirmanych123' INHERIT;
CREATE ROLE listener_kamal LOGIN PASSWORD 'kamalgamri321' INHERIT;
GRANT non_sub_listeners_r TO listener_nursultan;
GRANT non_sub_listeners_r TO listener_kamal;

CREATE ROLE subscripted_listener_batyrkhan LOGIN PASSWORD 'qwerty123' INHERIT;
CREATE ROLE subscripted_listener_alinur LOGIN PASSWORD 'allurlimur' INHERIT;
GRANT sub_listeners_r TO subscripted_listener_batyrkhan;
GRANT sub_listeners_r TO subscripted_listener_alinur;

CREATE ROLE manager_marat LOGIN PASSWORD 'maratik228' INHERIT;
CREATE ROLE manager_sultan LOGIN PASSWORD 'sultikbultik' INHERIT;
GRANT content_managers_r TO manager_marat;
GRANT content_managers_r TO manager_sultan;

CREATE ROLE artist_queen LOGIN PASSWORD 'RestInPeaceFreddieMercury' INHERIT;
CREATE ROLE artist_kendricklamar LOGIN PASSWORD 'TheyNotLikeUsKL';
GRANT artists_r TO artist_queen;
GRANT artists_r TO artist_kendricklamar;