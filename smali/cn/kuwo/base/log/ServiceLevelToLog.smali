.class public Lcn/kuwo/base/log/ServiceLevelToLog;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field public static b:J

.field public static c:J

.field public static d:J

.field public static e:J

.field public static f:J

.field public static g:J

.field public static h:J

.field public static i:J

.field public static j:J

.field private static k:Ljava/util/Map;

.field private static l:Ljava/util/Map;

.field private static m:Lcn/kuwo/base/log/ServiceLevelToLog;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x2710

    const-wide/16 v2, 0x1388

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/kuwo/base/log/ServiceLevelToLog;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/kuwo/base/log/ServiceLevelToLog;->l:Ljava/util/Map;

    sput-wide v2, Lcn/kuwo/base/log/ServiceLevelToLog;->a:J

    sput-wide v2, Lcn/kuwo/base/log/ServiceLevelToLog;->b:J

    sput-wide v2, Lcn/kuwo/base/log/ServiceLevelToLog;->c:J

    sput-wide v2, Lcn/kuwo/base/log/ServiceLevelToLog;->d:J

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcn/kuwo/base/log/ServiceLevelToLog;->e:J

    sput-wide v4, Lcn/kuwo/base/log/ServiceLevelToLog;->f:J

    sput-wide v4, Lcn/kuwo/base/log/ServiceLevelToLog;->g:J

    sput-wide v4, Lcn/kuwo/base/log/ServiceLevelToLog;->h:J

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcn/kuwo/base/log/ServiceLevelToLog;->i:J

    const-wide/32 v0, 0x2bf20

    sput-wide v0, Lcn/kuwo/base/log/ServiceLevelToLog;->j:J

    new-instance v0, Lcn/kuwo/base/log/ServiceLevelToLog;

    invoke-direct {v0}, Lcn/kuwo/base/log/ServiceLevelToLog;-><init>()V

    sput-object v0, Lcn/kuwo/base/log/ServiceLevelToLog;->m:Lcn/kuwo/base/log/ServiceLevelToLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/kuwo/base/log/ServiceLevelToLog;
    .locals 1

    sget-object v0, Lcn/kuwo/base/log/ServiceLevelToLog;->m:Lcn/kuwo/base/log/ServiceLevelToLog;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ServiceLevelLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end event obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/log/ServiceLevelToLog;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->onEventEnd()V

    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "ServiceLevelLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start event obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extraContent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/log/ServiceLevelToLog;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcn/kuwo/base/log/ServiceLevelToLog;->l:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    :goto_0
    new-instance v0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;-><init>(Lcn/kuwo/base/log/ServiceLevelToLog;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->onEventBegin()V

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v6, v0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ServiceLevelLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove event obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/log/ServiceLevelToLog;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
