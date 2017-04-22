BEGIN;

DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,

  youtube_post BOOLEAN DEFAULT false NOT NULL,
  author TEXT,
  title VARCHAR(500) NOT NULL,
  date_published TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  image_url VARCHAR(2083),
  article TEXT,
  youtube_url VARCHAR(2083),
  soundcloud_url VARCHAR(2083),
  bandcamp_url VARCHAR(2083),
  mixcloud_url VARCHAR(2083),
  mix_tracklist VARCHAR(2000),

  post_category VARCHAR(500) NOT NULL,

  artist_facebook_url VARCHAR(2083),
  artist_youtube_url VARCHAR(2083),
  artist_soundcoud_url VARCHAR(2083),
  artist_mixcloud_url VARCHAR(2083),
  artist_bandcamp_url VARCHAR(2083),
  artist_spotify_url VARCHAR(2083),
  artist_website_url VARCHAR(2083),

  tags VARCHAR(500) NOT NULL
);

-- youtube post, no image
INSERT INTO posts (
  youtube_post,
  title,
  article,
  youtube_url,
  post_category,
  artist_facebook_url,
  artist_youtube_url,
  tags
  ) VALUES

  ('TRUE',
  'Bonobo''s remix of Andromeda by the Gorillaz',
  'Bonobo and Gorillaz are two names we''ve seen a lot of in the last few months.

  The former returned this year with sixth album ''Migration'', including tracks such as the woozy, glitter-sprayed ''No Reason'' with Nick Murphy. After four years away, it was only right for us to put him on the cover of Mixmag and have him play Mixmag Live to celebrate.

  Gorillaz hype has been rife, too, with the animated primates promising a new album at the tail-end of 2016 and officially announcing it - and collaborators such as Kelela, Danny Brown and Grace Jones - in March. Damon Albarn and co. ensured the excitement was still sky high with a spectacle at Printworks London recently.

  Shortly after revealing another 40-odd tunes are ready to be unleashed, Bonobo''s remix of ''Andromeda'' has surfaced online. The Ninja Tune man delivers yet another smooth and gentle treat, guaranteed to put you into a dreamlike state. Listen below.
  ',
  'https%3A%2F%2Fwww.youtube.com%2Fembed%2FTT1aqS25j5s',
  '["Video"]',
  'https%3A%2F%2Fwww.facebook.com%2Fbonoboofficial%2F',
  'https%3A%2F%2Fwww.youtube.com%2Fuser%2FBonoboVids', '["Music", "Bonobo", "Gorillaz", "Essential Listening"]'
);
-- soundcloud mix no image
INSERT INTO posts (
  youtube_post,
  author,
  title,
  image_url,
  article,
  mixcloud_url,
  mix_tracklist,
  post_category,
  artist_facebook_url,
  artist_soundcoud_url,
  artist_mixcloud_url,
  artist_spotify_url,
  artist_bandcamp_url,
  artist_website_url,
  tags
) VALUES

(
  'FALSE',
  'VC CREW',
  'The Cover Mix: Bonobo',
  'bonobo1_170207_150623_1.jpg',
  'Gracing the cover of our February 2017 issue is spellbinding Ninja Tune artist Simon Green aka Bonobo, who since the turn of the millennium has stealthily risen up the ranks to take position as the biggest live and album act in dance music.

  As a DJ he takes dancers on musical trips, combining bold percussive foundations with soaring melodies to lift dance floors into higher realms of euphoria. Bonobo''s cover mix is a prime example of this energising approach, stylishly moving through cuts from Theo Parrish, Axel Boman, Denis Sulta and more. Listen to it and read Green’s explanation of the tracklist below.',
  'https%3A%2F%2Fwww.mixcloud.com%2Fwidget%2Fiframe%2F%3Ffeed%3Dhttps%253A%252F%252Fwww.mixcloud.com%252FMixmag%252Fthe-cover-mix-bonobo%252F%26hide_cover%3D1',
  '[
  {
  "artist": "Bonobo",
  "track":	"Bambro Koyo Ganda (Ghost edit)"
  },
  {
  "artist":	"O''Flynn",
  "track": "Glow Worm"
  },
  {
  "artist":	"Bonobo",
  "track":	"Outlier"
  },
  {
  "artist":	"Theo Parrish",
  "track":	"Warrior Code"
  },
  {
  "artist":	"Bonobo",
  "track":	"No Reason (instrumental)"
  },
  {
  "artist":	"Hot Chip",
  "track":	"Atomic Bomb (John Talabot remix)"
  },
  {
  "artist":	"Kidkanevil feat Phasma",
  "track":	"Inakunaru (Bonobo reshuffle)"
  },
  {"artist":	"Soccer96 feat Swann Hunter",
  "track":	"Flight Formation (Glenn Astro DJ-Friendly edit)"
  },
  {
  "artist":	"Music People",
  "track":	"Always On"
  },
  {
  "artist":	"Liquid Dope",
  "track":	"Terra-Humara"
  },
  {
  "artist":	"Axel Boman",
  "track":	"Moon Dancer"
  },
  {
  "artist":	"Youandewan",
  "track":	"10405 (Alice)"
  },
  {
  "artist":	"Denis Sulta",
  "track":	"Nein Fortiate"
  },
  {
  "artist":	"Gold Panda",
  "track":	"Chiba Days"
  }
  ]',
  '["Mix"]',
  'https%3A%2F%2Fwww.facebook.com%2Fbonoboofficial%2F',
  'https%3A%2F%2Fsoundcloud.com%2Fbonobo',
  'https%3A%2F%2Fwww.mixcloud.com%2FBonobo%2F',
  'https%3A%2F%2Fopen.spotify.com%2Fartist%2F0cmWgDlu9CwTgxPhf403hb',
  'https%3A%2F%2Fbonobomusic.bandcamp.com%2F',
  'http://bonobomusic.com/',
  '["Music", "Mix", "Bonobo", "Cover Mix", "Essential Listening"]'
);

COMMIT;
