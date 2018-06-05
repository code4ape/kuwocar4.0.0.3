.class public final Lcn/kuwo/base/imageloader/ImageNotifyRunner;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:I

.field private static b:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

.field private static volatile c:I

.field private static d:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-array v0, v1, [Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    sput-object v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->b:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    new-array v0, v1, [Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    sput-object v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->d:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;
    .locals 5

    sget v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a:I

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    invoke-direct {v0}, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->b:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    monitor-enter v1

    :try_start_0
    sget v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a:I

    if-nez v0, :cond_1

    new-instance v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    invoke-direct {v0}, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;-><init>()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a:I

    sget-object v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->b:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    sget v2, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a:I

    aget-object v0, v0, v2

    sget-object v2, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->b:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    sget v3, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static b()Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;
    .locals 5

    sget v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c:I

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    invoke-direct {v0}, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->d:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    monitor-enter v1

    :try_start_0
    sget v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c:I

    if-nez v0, :cond_1

    new-instance v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    invoke-direct {v0}, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;-><init>()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c:I

    sget-object v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->d:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    sget v2, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c:I

    aget-object v0, v0, v2

    sget-object v2, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->d:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    sget v3, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a:I

    return v0
.end method

.method static synthetic d()[Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;
    .locals 1

    sget-object v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->b:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c:I

    return v0
.end method

.method static synthetic g()[Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;
    .locals 1

    sget-object v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->d:[Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    return-object v0
.end method

.method static synthetic h()I
    .locals 1

    sget v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->c:I

    return v0
.end method
