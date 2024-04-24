CREATE TABLE genre (
	id SERIAL NOT NULL,
	genre VARCHAR(80) NOT NULL
	CONSTRAINT pk_genre  PRIMARY KEY (id)
);

CREATE TABLE play_out (
    id_artist INT NOT NULL, 
    id_genre INT NOT NULL, 
    id_compilation\albom INT NULL,
    CONSTRAINT fk_artist FOREIGN KEY(id_artist) REFERENCES artist(id), 
    CONSTRAINT fk_genre FOREIGN KEY(id_genre) REFERENCES genre(id),
    CONSTRAINT fk_persons FOREIGN KEY(id_compilation) REFERENCES compilation(id),
	CONSTRAINT fk_persons FOREIGN KEY(id_album) REFERENCES album(id),
	CONSTRAINT pk_genre PRIMARY KEY (id_artist, id_genre)
);


CREATE TABLE artist (
	id SERIAL NOT NULL,
	nickname VARCHAR(40) NOT NULL,
    firname VARCHAR(40) NOT NULL,
	surname VARCHAR(50) NOT NULL,
	gender VARCHAR(90) NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
);


CREATE TABLE compilation (
	id SERIAL NOT NULL,
	id_treak INT NOT NULL,
	year_compilation INT NOT NULL,
	title_compilation VARCHAR(40) NOT NULL,
	tracks_compilation VARCHAR(40) NOT NULL,
    CONSTRAINT pk_compilation PRIMARY KEY (id),
    CONSTRAINT fk_compilation  FOREIGN KEY(id_track) REFERENCES track(id)
);


CREATE TABLE track (
	id SERIAL NOT NULL,
	title_track VARCHAR(90) NOT NULL,
    duration_track INT NOT NULL,
	CONSTRAINT pk_track PRIMARY KEY (id)
);


CREATE TABLE album (
	id SERIAL NOT NULL,
	id_track INT NOT NULL,
    year_album INT NOT NULL,
    title_album VARCHAR(40) NOT NULL,
	trachs_albom VARCHAR(40) NOT NULL,
	CONSTRAINT pk_album PRIMARY KEY (id),
	CONSTRAINT fk_aibum FOREIGN KEY (id_track) REFERENCES track(id) 
);