.class public final Lcn/kuwo/base/util/KwThreadPool;
.super Ljava/lang/Object;


# static fields
.field private static final POOL_CAPACITY_MAX:I = 0x5

.field private static volatile nextBlankPos:I

.field private static threads:[Lcn/kuwo/base/util/KwThreadPool$KwThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/kuwo/base/util/KwThreadPool;->nextBlankPos:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/base/util/KwThreadPool$KwThread;

    sput-object v0, Lcn/kuwo/base/util/KwThreadPool;->threads:[Lcn/kuwo/base/util/KwThreadPool$KwThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcn/kuwo/base/util/KwThreadPool;->nextBlankPos:I

    return v0
.end method

.method static synthetic access$104()I
    .locals 1

    sget v0, Lcn/kuwo/base/util/KwThreadPool;->nextBlankPos:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/kuwo/base/util/KwThreadPool;->nextBlankPos:I

    return v0
.end method

.method static synthetic access$200()[Lcn/kuwo/base/util/KwThreadPool$KwThread;
    .locals 1

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool;->threads:[Lcn/kuwo/base/util/KwThreadPool$KwThread;

    return-object v0
.end method

.method private static getIdleThread()Lcn/kuwo/base/util/KwThreadPool$KwThread;
    .locals 5

    const/4 v1, 0x0

    sget v0, Lcn/kuwo/base/util/KwThreadPool;->nextBlankPos:I

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/util/KwThreadPool$KwThread;

    invoke-direct {v0, v1}, Lcn/kuwo/base/util/KwThreadPool$KwThread;-><init>(Lcn/kuwo/base/util/KwThreadPool$1;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcn/kuwo/base/util/KwThreadPool;->threads:[Lcn/kuwo/base/util/KwThreadPool$KwThread;

    monitor-enter v1

    :try_start_0
    sget v0, Lcn/kuwo/base/util/KwThreadPool;->nextBlankPos:I

    if-nez v0, :cond_1

    new-instance v0, Lcn/kuwo/base/util/KwThreadPool$KwThread;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcn/kuwo/base/util/KwThreadPool$KwThread;-><init>(Lcn/kuwo/base/util/KwThreadPool$1;)V

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
    sget v0, Lcn/kuwo/base/util/KwThreadPool;->nextBlankPos:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/kuwo/base/util/KwThreadPool;->nextBlankPos:I

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool;->threads:[Lcn/kuwo/base/util/KwThreadPool$KwThread;

    sget v2, Lcn/kuwo/base/util/KwThreadPool;->nextBlankPos:I

    aget-object v0, v0, v2

    sget-object v2, Lcn/kuwo/base/util/KwThreadPool;->threads:[Lcn/kuwo/base/util/KwThreadPool$KwThread;

    sget v3, Lcn/kuwo/base/util/KwThreadPool;->nextBlankPos:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    if-ne p0, v0, :cond_0

    :cond_0
    invoke-static {}, Lcn/kuwo/base/util/KwThreadPool;->getIdleThread()Lcn/kuwo/base/util/KwThreadPool$KwThread;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcn/kuwo/base/util/KwThreadPool$KwThread;->runThread(Ljava/lang/Runnable;I)V

    return-void
.end method
