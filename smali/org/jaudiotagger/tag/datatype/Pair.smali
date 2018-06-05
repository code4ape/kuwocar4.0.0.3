.class public Lorg/jaudiotagger/tag/datatype/Pair;
.super Ljava/lang/Object;


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Pair;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/datatype/Pair;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Pair;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Pair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Pair;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Pair;->value:Ljava/lang/String;

    return-void
.end method
