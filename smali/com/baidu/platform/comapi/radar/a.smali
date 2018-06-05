.class public Lcom/baidu/platform/comapi/radar/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/baidu/platform/comapi/radar/d;

.field private static c:Landroid/os/Handler;

.field private static d:Lcom/baidu/platform/comapi/radar/a;


# instance fields
.field private a:Lcom/baidu/platform/comjni/map/radar/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/platform/comapi/radar/a;->b:Lcom/baidu/platform/comapi/radar/d;

    sput-object v0, Lcom/baidu/platform/comapi/radar/a;->c:Landroid/os/Handler;

    sput-object v0, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    new-instance v0, Lcom/baidu/platform/comapi/radar/d;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/radar/d;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/radar/a;->b:Lcom/baidu/platform/comapi/radar/d;

    new-instance v0, Lcom/baidu/platform/comapi/radar/b;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/radar/b;-><init>(Lcom/baidu/platform/comapi/radar/a;)V

    sput-object v0, Lcom/baidu/platform/comapi/radar/a;->c:Landroid/os/Handler;

    const/16 v0, 0x7530

    sget-object v1, Lcom/baidu/platform/comapi/radar/a;->c:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/mapapi/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->b:Lcom/baidu/platform/comapi/radar/d;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/radar/d;->a(Lcom/baidu/platform/comapi/radar/a;)V

    return-void
.end method

.method public static a()Lcom/baidu/platform/comapi/radar/a;
    .locals 2

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/baidu/platform/comapi/radar/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/platform/comapi/radar/a;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/radar/a;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/radar/a;->f()Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic e()Lcom/baidu/platform/comapi/radar/d;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->b:Lcom/baidu/platform/comapi/radar/d;

    return-object v0
.end method

.method private f()Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/platform/comjni/map/radar/a;

    invoke-direct {v1}, Lcom/baidu/platform/comjni/map/radar/a;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/radar/a;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/baidu/platform/comapi/radar/c;)V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->b:Lcom/baidu/platform/comapi/radar/d;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/radar/d;->a(Lcom/baidu/platform/comapi/radar/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/radar/a;->b(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/baidu/mapapi/model/LatLng;IIIIILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lez p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "locx"

    iget-wide v2, p2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "locy"

    iget-wide v2, p2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "radius"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "pagenum"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "sortby"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "sortrule"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "time_interval"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/radar/a;->c(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "locx"

    iget-wide v2, p2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "locy"

    iget-wide v2, p2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "comments"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/radar/a;->a(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->b:Lcom/baidu/platform/comapi/radar/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/radar/d;->a()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    const/16 v1, 0x7532

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/radar/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    if-eqz v0, :cond_1

    const/16 v0, 0x7530

    sget-object v1, Lcom/baidu/platform/comapi/radar/a;->c:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/mapapi/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/radar/a;->b()I

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    iput-object v2, v0, Lcom/baidu/platform/comapi/radar/a;->a:Lcom/baidu/platform/comjni/map/radar/a;

    sget-object v0, Lcom/baidu/platform/comapi/radar/a;->b:Lcom/baidu/platform/comapi/radar/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/radar/d;->b()V

    sput-object v2, Lcom/baidu/platform/comapi/radar/a;->b:Lcom/baidu/platform/comapi/radar/d;

    :cond_0
    sput-object v2, Lcom/baidu/platform/comapi/radar/a;->d:Lcom/baidu/platform/comapi/radar/a;

    :cond_1
    return-void
.end method
