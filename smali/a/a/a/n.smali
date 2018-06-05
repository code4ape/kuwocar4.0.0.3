.class public abstract La/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/d;


# static fields
.field private static final c:Ljava/util/Map;


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:La/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/n;->c:Ljava/util/Map;

    sget-object v0, La/a/a/n;->c:Ljava/util/Map;

    const-class v1, La/a/a/c/c;

    new-instance v2, La/a/a/n$b;

    invoke-direct {v2, v3}, La/a/a/n$b;-><init>(La/a/a/n$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/a/n;->c:Ljava/util/Map;

    const-class v1, La/a/a/c/d;

    new-instance v2, La/a/a/n$d;

    invoke-direct {v2, v3}, La/a/a/n$d;-><init>(La/a/a/n$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/n;->b:La/a/a/k;

    iput-object v0, p0, La/a/a/n;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract a(La/a/a/k;)La/a/a/b/c;
.end method

.method public a()La/a/a/k;
    .locals 1

    iget-object v0, p0, La/a/a/n;->b:La/a/a/k;

    return-object v0
.end method

.method protected abstract a(S)La/a/a/k;
.end method

.method protected abstract a(La/a/a/b/h;La/a/a/b/c;)Ljava/lang/Object;
.end method

.method protected abstract a(La/a/a/b/h;S)Ljava/lang/Object;
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a/a/n;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract c()La/a/a/b/m;
.end method

.method protected abstract c(La/a/a/b/h;)V
.end method

.method protected abstract d(La/a/a/b/h;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/n;->a()La/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/a/a/n;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/n;->a()La/a/a/k;

    move-result-object v2

    invoke-virtual {p0, v2}, La/a/a/n;->a(La/a/a/k;)La/a/a/b/c;

    move-result-object v2

    iget-object v2, v2, La/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, v0, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, La/a/a/e;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
