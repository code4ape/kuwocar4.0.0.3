.class public abstract Lorg/jaudiotagger/tag/datatype/AbstractValuePair;
.super Ljava/lang/Object;


# instance fields
.field protected final idToValue:Ljava/util/Map;

.field protected iterator:Ljava/util/Iterator;

.field protected value:Ljava/lang/String;

.field protected final valueList:Ljava/util/List;

.field protected final valueToId:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public getAlphabeticalValueList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    return-object v0
.end method

.method public getIdToValueMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueToIdMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    return-object v0
.end method
