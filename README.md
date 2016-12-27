# Yanderemod

Scripting basic level documentation

## Functions
### General
```cpp
bool        addEventHandler      ( string name, function callback );
bool        addCommandHandler    ( string name, function callback );
```

### UI
```cpp
void        showLoadingScreen   ( bool show );
```

### Object
```cpp
array       getObjectPosition    ( int objectid );
bool        setObjectPosition    ( int objectid, float x, float y, float z );
array       getObjectRotation    ( int objectid );
bool        setObjectRotation    ( int objectid, float x, float y, float z );
```

### Player
```cpp
string      getPlayerName        ( int objectid );
bool        isPlayerEntity       ( int objectid );
```

### NPC
```cpp
objectID    spawnNPC             ( int modelid, float x, float y, float z );
void        setNPCTarget         ( int objectid, int targetid );
void        setNPCTarget         ( int objectid, int targetid );
void        setNPCSpeed          ( int objectid, float speed );
objectID    getNPCTarget         ( int objectid );
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
void        onPlayerConnected     ( int entityid, string nickname );
void        onPlayerDisconnected  ( int entityid );
void        onPlayerEnterLocation ( int entityid, string locationName );
void        onEntitySpawned       ( int entityid );
void        onEntityDamaged       ( int entityid, float amount,  int attackerid = null );
void        onEntityDead          ( int entityid, string reason, int attackerid = null );
void        onItemPickedUp        ( int entityid, int pickupperid );
void        onStartLocalPlayer    ();

```

## Constants
```js
ENTITY_WALK     = 1;
ENTITY_RUN      = 2;
ENTITY_SNEAK    = 3;
```
