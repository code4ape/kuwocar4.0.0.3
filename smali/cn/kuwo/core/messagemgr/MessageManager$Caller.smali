.class public abstract Lcn/kuwo/core/messagemgr/MessageManager$Caller;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public __id:Lcn/kuwo/core/messagemgr/MessageID;

.field public __sync:Z

.field protected ob:Lcn/kuwo/core/messagemgr/IObserverBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcn/kuwo/core/messagemgr/MessageID;->a:Lcn/kuwo/core/messagemgr/MessageID;

    iput-object v0, p0, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->__id:Lcn/kuwo/core/messagemgr/MessageID;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->__sync:Z

    return-void
.end method


# virtual methods
.method public abstract call()V
.end method

.method protected final notifyFinish()V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->__sync:Z

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    sget-boolean v0, Lcn/kuwo/core/messagemgr/MessageManager;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->__id:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0}, Lcn/kuwo/core/messagemgr/MessageID;->ordinal()I

    move-result v1

    sget-object v0, Lcn/kuwo/core/messagemgr/MessageManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a(II)Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;

    move-result-object v2

    :goto_0
    iget v1, v2, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->b:I

    iget v3, v2, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->c:I

    if-ge v1, v3, :cond_0

    iget v1, v2, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/core/messagemgr/IObserverBase;

    iput-object v1, p0, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    invoke-virtual {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->call()V

    iget v1, v2, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    invoke-static {}, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a()V

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;->notifyFinish()V

    return-void
.end method
