.class public final Lcn/kuwo/base/util/KwTimer;
.super Ljava/lang/Object;


# static fields
.field public static final ACCURACY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "KwTimer"


# instance fields
.field private interval:I

.field private listener:Lcn/kuwo/base/util/KwTimer$Listener;

.field private remainderTimes:I

.field private runThreadID:J

.field private running:Z

.field private startTime:J

.field private tickTimes:I


# direct methods
.method public constructor <init>(Lcn/kuwo/base/util/KwTimer$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/kuwo/base/util/KwTimer;->runThreadID:J

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/util/KwTimer;->remainderTimes:I

    iput-object p1, p0, Lcn/kuwo/base/util/KwTimer;->listener:Lcn/kuwo/base/util/KwTimer$Listener;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/base/util/KwTimer;->runThreadID:J

    return-void
.end method

.method static synthetic access$002(Lcn/kuwo/base/util/KwTimer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/util/KwTimer;->running:Z

    return p1
.end method

.method static synthetic access$200(Lcn/kuwo/base/util/KwTimer;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/util/KwTimer;->interval:I

    return v0
.end method

.method static synthetic access$300(Lcn/kuwo/base/util/KwTimer;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/util/KwTimer;->onTimer()V

    return-void
.end method

.method private onTimer()V
    .locals 2

    iget v0, p0, Lcn/kuwo/base/util/KwTimer;->remainderTimes:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/kuwo/base/util/KwTimer;->remainderTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/base/util/KwTimer;->remainderTimes:I

    iget v0, p0, Lcn/kuwo/base/util/KwTimer;->remainderTimes:I

    if-nez v0, :cond_0

    const-string v0, "KwTimer"

    const-string v1, "auto stop"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->stopTimer(Lcn/kuwo/base/util/KwTimer;)V

    :cond_0
    iget v0, p0, Lcn/kuwo/base/util/KwTimer;->tickTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/base/util/KwTimer;->tickTimes:I

    iget-object v0, p0, Lcn/kuwo/base/util/KwTimer;->listener:Lcn/kuwo/base/util/KwTimer$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/util/KwTimer;->listener:Lcn/kuwo/base/util/KwTimer$Listener;

    invoke-interface {v0, p0}, Lcn/kuwo/base/util/KwTimer$Listener;->onTimer(Lcn/kuwo/base/util/KwTimer;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getRemainderTimes()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/util/KwTimer;->remainderTimes:I

    return v0
.end method

.method public getRunningTimeMiliseconds()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/base/util/KwTimer;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTickTimes()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/util/KwTimer;->tickTimes:I

    return v0
.end method

.method public isRunnig()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/util/KwTimer;->running:Z

    return v0
.end method

.method public setListener(Lcn/kuwo/base/util/KwTimer$Listener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/KwTimer;->listener:Lcn/kuwo/base/util/KwTimer$Listener;

    return-void
.end method

.method public start(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/base/util/KwTimer;->start(II)V

    return-void
.end method

.method public start(II)V
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/base/util/KwTimer;->running:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcn/kuwo/base/util/KwTimer;->interval:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/base/util/KwTimer;->startTime:J

    iput p2, p0, Lcn/kuwo/base/util/KwTimer;->remainderTimes:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/util/KwTimer;->tickTimes:I

    invoke-static {p0}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->setTimer(Lcn/kuwo/base/util/KwTimer;)V

    const-string v0, "KwTimer"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/base/util/KwTimer;->running:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "KwTimer"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->stopTimer(Lcn/kuwo/base/util/KwTimer;)V

    goto :goto_0
.end method
