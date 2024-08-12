-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- CREATE TABLE IF NOT EXISTS users (
--     'id' UUID PRIMARY KEY NOT NULL DEFAULT (uuid_generate_v4()),
--     'username' VARCHAR NOT NULL,
--     'password' VARCHAR NOT NULL,
--     "created_at" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );

-- CREATE TABLE IF NOT EXISTS rooms (
--     'id' UUID PRIMARY KEY NOT NULL DEFAULT (uuid_generate_v4()),
--     'name' VARCHAR NOT NULL,
--     'createdAt' TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE IF NOT EXISTS roomUsers (
--     'roomId' INT,
--     'userId' INT,
--     'joinedAt' TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     PRIMARY KEY (roomId, userId),
--     FOREIGN KEY (roomId) REFERENCES Rooms(id),
--     FOREIGN KEY (userId) REFERENCES Users(id),
--     CHECK ((SELECT COUNT(*) FROM RoomUsers WHERE roomId = roomId) <= 2)
-- );

-- CREATE TABLE IF NOT EXISTS messages (
--     'id' UUID PRIMARY KEY NOT NULL DEFAULT (uuid_generate_v4()),
--     'roomId' INT,
--     'senderId' INT,
--     'message' TEXT NOT NULL,
--     'createdAt' TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (roomId) REFERENCES Rooms(id),
--     FOREIGN KEY (senderId) REFERENCES Users(id)
-- );

-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- CREATE TABLE IF NOT EXISTS users (
--     "id" UUID PRIMARY KEY NOT NULL DEFAULT (uuid_generate_v4()),
--     "name" VARCHAR NOT NULL,
--     "author" VARCHAR NOT NULL,
--     "publication_date" VARCHAR NOT NULL,
--     "pages" INTEGER NOT NULL,
--     "created_at" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- )

CREATE TABLE users (
    "id" bigserial PRIMARY KEY,
    "username" varchar NOT NULL,
    "email" varchar NOT NULL,
    "password" varchar NOT NULL
)