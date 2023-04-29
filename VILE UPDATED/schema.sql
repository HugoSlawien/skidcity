

CREATE TABLE IF NOT EXISTS afk (
    user_id BIGINT,
    guild_id BIGINT,
    status VARCHAR(255),
    lastseen BIGINT,
    PRIMARY KEY (user_id, guild_id)
);


CREATE TABLE IF NOT EXISTS antialt (
    guild_id BIGINT,
    state BOOLEAN,
    log_channel BIGINT,
    age TINYINT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS antibot (
    guild_id BIGINT,
    state BOOLEAN,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS antinuke (
    guild_id BIGINT,
    ban BOOLEAN,
    kick BOOLEAN,
    rolecreate BOOLEAN,
    roledelete BOOLEAN,
    channelcreate BOOLEAN,
    channeldelete BOOLEAN,
    webhook BOOLEAN,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS antinuke_admins (
    guild_id BIGINT,
    user_id BIGINT,
    PRIMARY KEY (guild_id, user_id)
);


CREATE TABLE IF NOT EXISTS antinuke_whitelist (
    guild_id BIGINT,
    user_id BIGINT,
    PRIMARY KEY (guild_id, user_id)
);


CREATE TABLE IF NOT EXISTS autoreact (
    guild_id BIGINT,
    trig VARCHAR(255),
    reaction VARCHAR(255),
    PRIMARY KEY (guild_id, trig, reaction)
);


CREATE TABLE IF NOT EXISTS autoresponder (
    guild_id BIGINT,
    trig VARCHAR(255),
    content TEXT,
    PRIMARY KEY (guild_id, trig)
);


CREATE TABLE IF NOT EXISTS autorole (
    guild_id BIGINT,
    role_id BIGINT,
    PRIMARY KEY (guild_id, role_id)
);


CREATE TABLE IF NOT EXISTS birthdays (
    user_id BIGINT,
    birthday DATETIME,
    PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS blacklisted_guilds (
    guild_id BIGINT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS blacklisted_users (
    user_id BIGINT,
    PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS boost_channel (
    guild_id BIGINT,
    channel_id BIGINT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS boost_message (
    guild_id BIGINT,
    message TEXT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS chatfilter (
    guild_id BIGINT,
    strr VARCHAR(255),
    PRIMARY KEY (guild_id, strr)
);


CREATE TABLE IF NOT EXISTS commands (
    count INT
);


CREATE TABLE IF NOT EXISTS customprefix (
    user_id BIGINT,
    prefix VARCHAR(10),
    PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS disabled_commands (
    guild_id BIGINT,
    command VARCHAR(32),
    PRIMARY KEY (guild_id, command)
);


CREATE TABLE IF NOT EXISTS forcenick (
    guild_id BIGINT,
    user_id BIGINT,
    nickname VARCHAR(255),
    PRIMARY KEY (guild_id, user_id)
);


CREATE TABLE IF NOT EXISTS guildprefix (
    guild_id BIGINT,
    prefix VARCHAR(5),
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS lastfm (
    user_id BIGINT,
    lastfm_username VARCHAR(15),
    PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS lastfm_command (
    user_id BIGINT,
    name TINYTEXT,
    PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS lastfm_embed (
    user_id BIGINT,
    code TEXT,
    PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS lastfm_reactions (
    user_id BIGINT,
    emoji_id BIGINT,
    PRIMARY KEY (user_id, emoji_id)
);


CREATE TABLE IF NOT EXISTS levels (
    guild_id BIGINT,
    user_id BIGINT,
    experience BIGINT,
    level TINYINT,
    PRIMARY KEY (guild_id, user_id)
);


CREATE TABLE IF NOT EXISTS level_settings (
    guild_id BIGINT,
    state BOOLEAN,
    message BOOLEAN,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS marriage (
    user_id BIGINT,
    partner BIGINT,
    since INT,
    PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS messages (
    guild_id BIGINT,
    user_id BIGINT,
    messages INT,
    PRIMARY KEY (guild_id, user_id)
);


CREATE TABLE IF NOT EXISTS mod_confirmations (
    guild_id BIGINT,
    state BOOLEAN,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS mod_dms (
    guild_id BIGINT,
    state BOOLEAN,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS names (
    user_id BIGINT,
    name VARCHAR(225),
    timestamp INT,
    PRIMARY KEY (user_id, name, timestamp)
);



CREATE TABLE IF NOT EXISTS nodata (
    user_id BIGINT,
    data BOOLEAN,
    PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS punishment (
    guild_id BIGINT,
    punishment TINYTEXT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS restore (
    guild_id BIGINT,
    user_id BIGINT,
    role BIGINT,
    PRIMARY KEY (guild_id, user_id, role)
);


CREATE TABLE IF NOT EXISTS safesearch (
    guild_id BIGINT,
    state BOOLEAN,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS skullboard (
    guild_id BIGINT,
    channel_id BIGINT,
    PRIMARY KEY (guild_id, channel_id)
);


CREATE TABLE IF NOT EXISTS tags (
    guild_id BIGINT,
    creator_id BIGINT,
    name VARCHAR(255),
    response TEXT,
    PRIMARY KEY (guild_id, name)
);


CREATE TABLE IF NOT EXISTS warden (
    guild_id BIGINT,
    ban BOOLEAN,
    kick BOOLEAN,
    banlimit TINYINT,
    kicklimit TINYINT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS welcome_channel (
    guild_id BIGINT,
    channel_id BIGINT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS welcome_message (
    guild_id BIGINT,
    message TEXT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS goodbye_channel (
    guild_id BIGINT,
    channel_id BIGINT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS goodbye_message (
    guild_id BIGINT,
    message TEXT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS whitelist (
    guild_id BIGINT,
    user_id BIGINT,
    PRIMARY KEY (guild_id, user_id)
);


CREATE TABLE IF NOT EXISTS user_commands (
    user_id BIGINT,
    count INT,
    PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS boosterrole_settings (
    guild_id BIGINT, 
    state BOOLEAN, 
    base BIGINT DEFAULT NULL, 
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS boosterrole_roles (
    guild_id BIGINT, 
    user_id BIGINT, 
    role_id BIGINT, 
    PRIMARY KEY (guild_id, user_id)
);


CREATE TABLE IF NOT EXISTS tiktok_reposting (
    guild_id BIGINT,
    state BOOLEAN,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS youtube_reposting (
    guild_id BIGINT,
    state BOOLEAN,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS image_only (
    guild_id BIGINT,
    channel_id BIGINT,
    PRIMARY KEY (guild_id, channel_id)
);


CREATE TABLE IF NOT EXISTS moderation_history (
    guild_id BIGINT,
    user_id BIGINT,
    action TEXT,
    moderator_id BIGINT,
    reason TEXT,
    timestamp BIGINT,
    PRIMARY KEY (guild_id, user_id, timestamp)
);


CREATE TABLE IF NOT EXISTS ban_message (
    guild_id BIGINT,
    message TEXT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS joindm (
    guild_id BIGINT,
    message TEXT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS reaction_roles (
    guild_id BIGINT,
    message_id BIGINT,
    role_id BIGINT,
    emoji VARCHAR(255),
    PRIMARY KEY (guild_id, message_id, emoji)
);


CREATE TABLE IF NOT EXISTS ping_on_join (
    guild_id BIGINT,
    channel_id BIGINT,
    PRIMARY KEY (guild_id, channel_id)
);


CREATE TABLE IF NOT EXISTS ranks (
    guild_id BIGINT,
    role_id BIGINT,
    PRIMARY KEY (guild_id, role_id)
);


CREATE TABLE IF NOT EXISTS vm_channels (
    guild_id BIGINT,
    user_id BIGINT,
    channel_id BIGINT,
    PRIMARY KEY (guild_id, user_id)
);

                    
CREATE TABLE IF NOT EXISTS vm_guild_settings (
    guild_id BIGINT,
    vm_category_id BIGINT,
    vm_channel_id BIGINT,
    PRIMARY KEY (guild_id)
);

                    
CREATE TABLE IF NOT EXISTS reaction_roles (
    guild_id BIGINT,
    message_id BIGINT,
    role_id BIGINT,
    emoji JSON,
    PRIMARY KEY (guild_id, message_id, role_id)
);
                    
    
CREATE TABLE IF NOT EXISTS highlights (
    guild_id BIGINT,
    creator_id BIGINT,
    name VARCHAR(255),
    PRIMARY KEY (guild_id, name)
);
                    

CREATE TABLE IF NOT EXISTS antiraid (
    guild_id BIGINT,
    avatar BOOLEAN,
    joins TINYINT,
    age TINYINT,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS antiraid_whitelist (
    guild_id BIGINT,
    user_id BIGINT,
    PRIMARY KEY (guild_id, user_id)
);


CREATE TABLE IF NOT EXISTS aliases (
    guild_id BIGINT,
    alias VARCHAR(32),
    command TINYTEXT,
    PRIMARY KEY (guild_id, alias)
);


CREATE TABLE IF NOT EXISTS fake_permissions (
    guild_id BIGINT,
    role_id BIGINT,
    permission VARCHAR(255),
    PRIMARY KEY (guild_id, role_id, permission)
);


CREATE TABLE IF NOT EXISTS lastfm_playcount (
    user_id BIGINT,
    artist VARCHAR(255),
    play_count INT,
    PRIMARY KEY (user_id, artist)
);


CREATE TABLE IF NOT EXISTS automod (
    guild_id BIGINT,
    spam BOOLEAN,
    invites BOOLEAN,
    massmention BOOLEAN,
    PRIMARY KEY (guild_id)
);


CREATE TABLE IF NOT EXISTS automod_whitelist (
    guild_id BIGINT,
    user_id BIGINT,
    PRIMARY KEY (guild_id, user_id)
);


CREATE TABLE IF NOT EXISTS discriminator_roles (
    guild_id BIGINT,
    role_id VARCHAR(255),
    discriminator VARCHAR(4),
    PRIMARY KEY (guild_id, role_id, discriminator)
);


CREATE TABLE IF NOT EXISTS tracker (
    guild_id BIGINT,
    channel_id VARCHAR(255),
    discriminator VARCHAR(4),
    PRIMARY KEY (guild_id, channel_id, discriminator)
);
