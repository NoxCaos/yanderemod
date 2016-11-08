# Yanderemod

Scripting basic level documentation

## Functions
### General
```cpp
bool        addEventHandler      ( string name, function callback );
bool        addCommandHandler    ( string name, function callback );
```

### All enties
```cpp
int         getEntityModel       ( int entityid );
bool        setEntityModel       ( int entityid, int modelid );
float       getEntityHealth      ( int entityid );
bool        setEntityHealth      ( int entityid, float amount );
array       getEntityPosition    ( int entityid );
bool        setEntityPosition    ( int entityid, float x, float y, float z );
float       getEntityRotation    ( int entityid );
bool        setEntityRotation    ( int entityid, float x, float y, float z );
```

### Player
```cpp
string      getPlayerName        ( int entityid );
bool        isPlayerEntity       ( int entityid );
```

### NPC
```cpp
int         createNPC            ( int modelid, float x, float y, float z );
bool        isNPCEntity          ( int entityid );
bool        setNPCMoving         ( int entityid, float x, float y, float z, int movetype = ENTITY_WALK );
bool        setNPCTarget         ( int entityid, int targetid );
int         getNPCTarget         ( int entityid );
```

### Item
```cpp
int         createItem           ( int modelid, bool canBePicked, float x, float y, float z );
bool        isItemEntity         ( int entityid );
```

## Events
```cpp
void        onServerStarted     ();
void        onServerStopped     ();
void        onPlayerConnected   ( int entityid, string nickname );
void        onPlayerDisconnected( int entityid );
void        onEntitySpawned     ( int entityid );
void        onEntityDamaged     ( int entityid, float amount,  int attackerid = null );
void        onEntityDead        ( int entityid, string reason, int attackerid = null );
void        onItemPickedUp      ( int entityid, int pickupperid );

```

## Constants
```js
ENTITY_WALK     = 1;
ENTITY_RUN      = 2;
ENTITY_SNEAK    = 3;
```
