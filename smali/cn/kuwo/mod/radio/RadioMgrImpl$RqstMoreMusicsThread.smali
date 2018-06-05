.class public Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;
.super Ljava/lang/Thread;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/mod/radio/RadioMgrImpl;


# direct methods
.method protected constructor <init>(Lcn/kuwo/mod/radio/RadioMgrImpl;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->c:Lcn/kuwo/mod/radio/RadioMgrImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    new-array v9, v8, [I

    iget v1, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->a:I

    aput v1, v9, v0

    new-instance v10, Lcn/kuwo/mod/radio/RadioAccessorImpl;

    invoke-direct {v10}, Lcn/kuwo/mod/radio/RadioAccessorImpl;-><init>()V

    const-string v1, "RqstMoreMusicsThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[run] run in. mRqstId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->q:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v2}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v2

    sget-wide v4, Lcn/kuwo/base/log/ServiceLevelToLog;->d:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcn/kuwo/base/log/ServiceLevelToLog;->a(Ljava/lang/String;Ljava/lang/String;JJ)V

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    const/16 v2, 0x14

    invoke-interface {v10, v9, v2}, Lcn/kuwo/mod/radio/IRadioAccessor;->a([II)Lcn/kuwo/base/bean/BytesResult;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcn/kuwo/base/bean/BytesResult;->a:Lcn/kuwo/base/bean/BytesResult$ResultType;

    sget-object v5, Lcn/kuwo/base/bean/BytesResult$ResultType;->b:Lcn/kuwo/base/bean/BytesResult$ResultType;

    if-ne v4, v5, :cond_1

    :cond_0
    const-string v2, "RqstMoreMusicsThread"

    const-string v4, "[run] synRequestRadioMusics failed"

    invoke-static {v2, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcn/kuwo/base/bean/BytesResult;->b:[B

    iget v1, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->a:I

    invoke-static {v0, v1}, Lcn/kuwo/mod/radio/RadioXmlParser;->a([BI)Ljava/util/Collection;

    move-result-object v3

    move v0, v8

    :cond_2
    if-eqz v3, :cond_3

    if-nez v0, :cond_5

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RADIOID:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|RADIONA:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->q:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/log/LogDef$LogType;->q:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcn/kuwo/base/log/ServiceLevelToLog;->b(Ljava/lang/String;J)V

    :goto_2
    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->c:Lcn/kuwo/mod/radio/RadioMgrImpl;

    iget v1, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->a:I

    invoke-virtual {v0, v1, v3}, Lcn/kuwo/mod/radio/RadioMgrImpl;->a(ILjava/util/Collection;)V

    const-string v0, "RqstMoreMusicsThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[run] run out. mRqstId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, ""

    goto :goto_1

    :cond_5
    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/log/LogDef$LogType;->q:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcn/kuwo/base/log/ServiceLevelToLog;->a(Ljava/lang/String;J)V

    goto :goto_2
.end method
