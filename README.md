# Yanderemod

![discord](https://discordapp.com/api/guilds/274618011217035295/widget.png)

Scripting basic level documentation

## Functions
### General
```cpp
bool        addEventHandler      ( string name, function callback );
bool        addCommandHandler    ( string name, function callback );
```

### Environment
```
void        setSpawnPosition    ( string spawnID );
spawnID[]   getAllSpawnPoints   ( );
spawnID     getRandomSpawnPoint ( );
locID[]     getAllLocations     ( );
locID       getRandomLocation   ( );
Vector3     getLocationPostition( );
Vector3     getLocationRestArea ( );
```

### UI
```cpp
void        showLoadingScreen   ( bool show );
```

### Object
```cpp
objectID    spawnObject          ( string name, float x, float y, float z );
array       getObjectPosition    ( int objectid );
bool        setObjectPosition    ( int objectid, float x, float y, float z );
array       getObjectRotation    ( int objectid );
bool        setObjectRotation    ( int objectid, float x, float y, float z );
```

### Player
```cpp
string      getPlayerName        ( int objectid );
```

### NPC
```cpp
objectID    spawnNPC             ( int modelid, float x, float y, float z );
objectID    spawnRandomNPC       ( string name );
void        setNPCTarget         ( int objectid, int targetid );
void        setNPCTarget         ( int objectid, int targetid );
void        setNPCSpeed          ( int objectid, float speed );
objectID    getNPCTarget         ( int objectid );
string[]    getLoadedNPCs        ( );
```

### Item
```cpp
int         spawnItem            ( string itemID, float x, float y, float z );
```

### Console/Chat
```cpp
void        log                  ( string message );
void        log                  ( string message, float red, float green, float blue );
void        logError             ( string message );
```


## Events
```cpp
void        onServerStarted       ();
void        onServerStopped       ();
void        onServerReady         ();
void        onPlayerConnected     ( int objectID, string nickname );
void        onPlayerDisconnected  ( int objectID );
void        onPlayerEnterLocation ( int objectID, string locationName );
void        onNPCTargetReached    ( int objectID, string NPCName );
void        onNPCEnterLocation    ( string locationName, int objectID, string NPCName );
void        onObjectSpawned       ( int objectID );
void        onNPCDead             ( int objectID, string reason, int attackerid = null );
void        onItemPickedUp        ( int itemID, int pickupperid );
void        onStartLocalPlayer    ();

```

## Constants
```js
Object_WALK     = 1;
Object_RUN      = 2;
Object_SNEAK    = 3;
```
