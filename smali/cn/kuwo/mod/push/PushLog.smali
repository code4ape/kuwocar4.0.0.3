.class public Lcn/kuwo/mod/push/PushLog;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Lcn/kuwo/base/log/DebugLogger;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/mod/push/PushLog;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/mod/push/PushLog;->b:Lcn/kuwo/base/log/DebugLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuwo/mod/push/PushLog;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/kuwo/base/log/DebugLogger;
    .locals 3

    sget-object v0, Lcn/kuwo/mod/push/PushLog;->b:Lcn/kuwo/base/log/DebugLogger;

    if-nez v0, :cond_1

    sget-object v1, Lcn/kuwo/mod/push/PushLog;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/kuwo/mod/push/PushLog;->b:Lcn/kuwo/base/log/DebugLogger;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    invoke-static {v2}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "kuwo_service_logcat.log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/log/DebugLogger;->a(Ljava/lang/String;)Lcn/kuwo/base/log/DebugLogger;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/push/PushLog;->b:Lcn/kuwo/base/log/DebugLogger;

    :cond_0
    sget-object v0, Lcn/kuwo/mod/push/PushLog;->b:Lcn/kuwo/base/log/DebugLogger;

    if-eqz v0, :cond_2

    sget-object v0, Lcn/kuwo/mod/push/PushLog;->b:Lcn/kuwo/base/log/DebugLogger;

    invoke-virtual {v0}, Lcn/kuwo/base/log/DebugLogger;->a()V

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/kuwo/mod/push/PushLog;->b:Lcn/kuwo/base/log/DebugLogger;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcn/kuwo/mod/push/PushLog;->a:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
