.class public Lcom/umeng/analytics/f/d;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final d:Ljava/util/Map;

.field private static final e:J = -0x4ffe4305ce3009afL

.field private static final f:La/a/a/b/m;

.field private static final g:La/a/a/b/c;

.field private static final h:La/a/a/b/c;

.field private static final i:La/a/a/b/c;

.field private static final j:Ljava/util/Map;


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljava/util/List;

.field public c:Ljava/lang/String;

.field private k:[Lcom/umeng/analytics/f/d$e;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0xd

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/16 v9, 0xb

    const/4 v8, 0x2

    new-instance v0, La/a/a/b/m;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, La/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/f/d;->f:La/a/a/b/m;

    new-instance v0, La/a/a/b/c;

    const-string v1, "snapshots"

    invoke-direct {v0, v1, v12, v10}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/d;->g:La/a/a/b/c;

    new-instance v0, La/a/a/b/c;

    const-string v1, "journals"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v8}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/d;->h:La/a/a/b/c;

    new-instance v0, La/a/a/b/c;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/d;->i:La/a/a/b/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/f/d;->j:Ljava/util/Map;

    sget-object v0, Lcom/umeng/analytics/f/d;->j:Ljava/util/Map;

    const-class v1, La/a/a/c/c;

    new-instance v2, Lcom/umeng/analytics/f/d$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/analytics/f/d$b;-><init>(Lcom/umeng/analytics/f/d$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/umeng/analytics/f/d;->j:Ljava/util/Map;

    const-class v1, La/a/a/c/d;

    new-instance v2, Lcom/umeng/analytics/f/d$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/analytics/f/d$d;-><init>(Lcom/umeng/analytics/f/d$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/analytics/f/d$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/umeng/analytics/f/d$e;->a:Lcom/umeng/analytics/f/d$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "snapshots"

    new-instance v4, La/a/a/a/e;

    new-instance v5, La/a/a/a/c;

    invoke-direct {v5, v9}, La/a/a/a/c;-><init>(B)V

    new-instance v6, La/a/a/a/g;

    const-class v7, Lcom/umeng/analytics/f/c;

    invoke-direct {v6, v11, v7}, La/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, La/a/a/a/e;-><init>(BLa/a/a/a/c;La/a/a/a/c;)V

    invoke-direct {v2, v3, v10, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/f/d$e;->b:Lcom/umeng/analytics/f/d$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "journals"

    new-instance v4, La/a/a/a/d;

    const/16 v5, 0xf

    new-instance v6, La/a/a/a/g;

    const-class v7, Lcom/umeng/analytics/f/b;

    invoke-direct {v6, v11, v7}, La/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6}, La/a/a/a/d;-><init>(BLa/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/f/d$e;->c:Lcom/umeng/analytics/f/d$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "checksum"

    new-instance v4, La/a/a/a/c;

    invoke-direct {v4, v9}, La/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/f/d;->d:Ljava/util/Map;

    const-class v0, Lcom/umeng/analytics/f/d;

    sget-object v1, Lcom/umeng/analytics/f/d;->d:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/analytics/f/d$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/f/d$e;->b:Lcom/umeng/analytics/f/d$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/f/d$e;->c:Lcom/umeng/analytics/f/d$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->k:[Lcom/umeng/analytics/f/d$e;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/f/d;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/analytics/f/d$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/f/d$e;->b:Lcom/umeng/analytics/f/d$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/f/d$e;->c:Lcom/umeng/analytics/f/d$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->k:[Lcom/umeng/analytics/f/d$e;

    invoke-virtual {p1}, Lcom/umeng/analytics/f/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p1, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f/c;

    new-instance v4, Lcom/umeng/analytics/f/c;

    invoke-direct {v4, v0}, Lcom/umeng/analytics/f/c;-><init>(Lcom/umeng/analytics/f/c;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/f/d;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f/b;

    new-instance v3, Lcom/umeng/analytics/f/b;

    invoke-direct {v3, v0}, Lcom/umeng/analytics/f/b;-><init>(Lcom/umeng/analytics/f/b;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    :cond_3
    invoke-virtual {p1}, Lcom/umeng/analytics/f/d;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/f/d;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2

    :try_start_0
    new-instance v0, La/a/a/b/b;

    new-instance v1, La/a/a/d/a;

    invoke-direct {v1, p1}, La/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, La/a/a/b/b;-><init>(La/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/d;->a(La/a/a/b/h;)V
    :try_end_0
    .catch La/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, La/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2

    :try_start_0
    new-instance v0, La/a/a/b/b;

    new-instance v1, La/a/a/d/a;

    invoke-direct {v1, p1}, La/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, La/a/a/b/b;-><init>(La/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/d;->b(La/a/a/b/h;)V
    :try_end_0
    .catch La/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, La/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic q()La/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/umeng/analytics/f/d;->f:La/a/a/b/m;

    return-object v0
.end method

.method static synthetic r()La/a/a/b/c;
    .locals 1

    sget-object v0, Lcom/umeng/analytics/f/d;->g:La/a/a/b/c;

    return-object v0
.end method

.method static synthetic s()La/a/a/b/c;
    .locals 1

    sget-object v0, Lcom/umeng/analytics/f/d;->h:La/a/a/b/c;

    return-object v0
.end method

.method static synthetic t()La/a/a/b/c;
    .locals 1

    sget-object v0, Lcom/umeng/analytics/f/d;->i:La/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/analytics/f/d$e;
    .locals 1

    invoke-static {p1}, Lcom/umeng/analytics/f/d$e;->a(I)Lcom/umeng/analytics/f/d$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/umeng/analytics/f/d;
    .locals 1

    new-instance v0, Lcom/umeng/analytics/f/d;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/f/d;-><init>(Lcom/umeng/analytics/f/d;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/f/d;
    .locals 0

    iput-object p1, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/umeng/analytics/f/d;
    .locals 0

    iput-object p1, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/analytics/f/d;
    .locals 0

    iput-object p1, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(La/a/a/b/h;)V
    .locals 2

    sget-object v0, Lcom/umeng/analytics/f/d;->j:Ljava/util/Map;

    invoke-virtual {p1}, La/a/a/b/h;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/c/b;

    invoke-interface {v0}, La/a/a/c/b;->b()La/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/a/c/a;->b(La/a/a/b/h;La/a/a/d;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/f/b;)V
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/analytics/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public synthetic b(I)La/a/a/k;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/f/d;->a(I)Lcom/umeng/analytics/f/d$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    return-void
.end method

.method public b(La/a/a/b/h;)V
    .locals 2

    sget-object v0, Lcom/umeng/analytics/f/d;->j:Ljava/util/Map;

    invoke-virtual {p1}, La/a/a/b/h;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/c/b;

    invoke-interface {v0}, La/a/a/c/b;->b()La/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/a/c/a;->a(La/a/a/b/h;La/a/a/d;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public h()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    return-void
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/f/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public synthetic p()La/a/a/d;
    .locals 1

    invoke-virtual {p0}, Lcom/umeng/analytics/f/d;->a()Lcom/umeng/analytics/f/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "snapshots:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/umeng/analytics/f/d;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "journals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/umeng/analytics/f/d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
