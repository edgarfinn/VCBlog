BEGIN;

DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  youtube_post BOOLEAN DEFAULT false NOT NULL,
  title VARCHAR(500) NOT NULL,
  date_published TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  image_url VARCHAR(2083),
  article TEXT,
  youtube_url VARCHAR(2083),
  soundcloud_url VARCHAR(2083),
  bandcamp_url VARCHAR(2083),
  mixcloud_url VARCHAR(2083),
  post_category VARCHAR(2000) NOT NULL,
  artist_facebook_url VARCHAR(2083),
  artist_youtube_url VARCHAR(2083),
  artist_soundcoud_url VARCHAR(2083),
  artist_mixcloud_url VARCHAR(2083),
  artist_bandcamp_url VARCHAR(2083),
  artist_spotify_url VARCHAR(2083),
  artist_website_url VARCHAR(2083),
  tags VARCHAR(2000) NOT NULL
);

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
  'The former returned this year with sixth album ''Migration'', including tracks such as the woozy, glitter-sprayed ''No Reason'' with Nick Murphy. After four years away, it was only right for us to put him on the cover of Mixmag and have him play Mixmag Live to celebrate.

  Gorillaz hype has been rife, too, with the animated primates promising a new album at the tail-end of 2016 and officially announcing it - and collaborators such as Kelela, Danny Brown and Grace Jones - in March. Damon Albarn and co. ensured the excitement was still sky high with a spectacle at Printworks London recently.

  Shortly after revealing another 40-odd tunes are ready to be unleashed, Bonobo''s remix of ''Andromeda'' has surfaced online. The Ninja Tune man delivers yet another smooth and gentle treat, guaranteed to put you into a dreamlike state. Listen below.
  ',
  'https%3A%2F%2Fwww.youtube.com%2Fembed%2FTT1aqS25j5s',
  '["Video"]',
  'https%3A%2F%2Fwww.facebook.com%2Fbonoboofficial%2F',
  'https%3A%2F%2Fwww.youtube.com%2Fuser%2FBonoboVids', '["Music", "Bonobo", "Gorillaz", "Essential Listening"]'
);

COMMIT;
