.class public final Lcn/kuwo/core/messagemgr/MessageManager;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcn/kuwo/core/messagemgr/MessageManager;

.field static final b:J

.field static final c:Landroid/os/Handler;

.field static d:Z

.field static e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcn/kuwo/core/messagemgr/MessageManager;

    invoke-direct {v0}, Lcn/kuwo/core/messagemgr/MessageManager;-><init>()V

    sput-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->a:Lcn/kuwo/core/messagemgr/MessageManager;

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getMainThreadID()J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/core/messagemgr/MessageManager;->b:J

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageID;->values()[Lcn/kuwo/core/messagemgr/MessageID;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageID;->values()[Lcn/kuwo/core/messagemgr/MessageID;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageManager;->e:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/kuwo/core/messagemgr/MessageManager;
    .locals 1

    sget-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->a:Lcn/kuwo/core/messagemgr/MessageManager;

    return-object v0
.end method


# virtual methods
.method public a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V
    .locals 1

    sget-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;ILcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public a(Landroid/os/Handler;ILcn/kuwo/core/messagemgr/MessageManager$Caller;)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->run()V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getMainThreadID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "MessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u540c\u6b65\u6d88\u606f\u6267\u884c\u8d85\u65f6\uff0ctime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->__sync:Z

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p2, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->__sync:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;ILcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V
    .locals 2

    sget-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/kuwo/core/messagemgr/MessageID;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcn/kuwo/core/messagemgr/MessageID;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V
    .locals 1

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p2, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->__id:Lcn/kuwo/core/messagemgr/MessageID;

    sget-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0
.end method

.method public a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V
    .locals 1

    sget-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/core/messagemgr/MessageManager;->d:Z

    return-void
.end method

.method public b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V
    .locals 4

    sget-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/kuwo/core/messagemgr/MessageID;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/core/messagemgr/IObserverBase;

    if-ne v1, p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcn/kuwo/core/messagemgr/MessageID;->ordinal()I

    move-result v0

    invoke-static {v0, v2}, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->b(II)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p2, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->__id:Lcn/kuwo/core/messagemgr/MessageID;

    sget-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;ILcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0
.end method

.method public b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V
    .locals 1

    sget-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method
