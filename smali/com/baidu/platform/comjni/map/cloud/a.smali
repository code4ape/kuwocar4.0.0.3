.class public Lcom/baidu/platform/comjni/map/cloud/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Lcom/baidu/platform/comjni/map/cloud/JniCloud;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/platform/comjni/map/cloud/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comjni/map/cloud/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/platform/comjni/map/cloud/JniCloud;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/cloud/JniCloud;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/cloud/a;->c:Lcom/baidu/platform/comjni/map/cloud/JniCloud;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/cloud/a;->c:Lcom/baidu/platform/comjni/map/cloud/JniCloud;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/cloud/JniCloud;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/cloud/a;->b:J

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/cloud/a;->b:J

    return-wide v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/cloud/a;->c:Lcom/baidu/platform/comjni/map/cloud/JniCloud;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/cloud/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/cloud/JniCloud;->getSearchResult(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/cloud/a;->c:Lcom/baidu/platform/comjni/map/cloud/JniCloud;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/cloud/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/cloud/JniCloud;->cloudSearch(JLandroid/os/Bundle;)V

    return-void
.end method

.method public b()I
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/cloud/a;->c:Lcom/baidu/platform/comjni/map/cloud/JniCloud;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/cloud/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/cloud/JniCloud;->release(J)I

    move-result v0

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/cloud/a;->c:Lcom/baidu/platform/comjni/map/cloud/JniCloud;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/cloud/a;->b:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/cloud/JniCloud;->cloudDetailSearch(JLandroid/os/Bundle;)V

    return-void
.end method
