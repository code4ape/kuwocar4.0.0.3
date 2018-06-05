.class Lcn/kuwo/base/util/KwTimer$TimerHelper;
.super Landroid/os/Handler;


# static fields
.field private static final TIMER_ID:I = 0x3e9

.field private static threadLocal:Ljava/lang/ThreadLocal;


# instance fields
.field private allTimers:Ljava/util/ArrayList;

.field private timerMessageRunning:Z

.field private timingIdle:I

.field private timingNum:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->allTimers:Ljava/util/ArrayList;

    return-void
.end method

.method private add(Lcn/kuwo/base/util/KwTimer;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcn/kuwo/base/util/KwTimer;->access$002(Lcn/kuwo/base/util/KwTimer;Z)Z

    new-instance v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;-><init>(Lcn/kuwo/base/util/KwTimer$1;)V

    iput-object p1, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->timer:Lcn/kuwo/base/util/KwTimer;

    invoke-static {p1}, Lcn/kuwo/base/util/KwTimer;->access$200(Lcn/kuwo/base/util/KwTimer;)I

    move-result v1

    iput v1, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->interval:I

    invoke-static {p1}, Lcn/kuwo/base/util/KwTimer;->access$200(Lcn/kuwo/base/util/KwTimer;)I

    move-result v1

    iput v1, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->elapsed:I

    iget-object v1, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->allTimers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingNum:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingIdle:I

    const-string v0, "KwTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add timer,total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timerMessageRunning:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timerMessageRunning:Z

    const/16 v0, 0x3e9

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private dispatch()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->allTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;

    iget v2, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->elapsed:I

    add-int/lit8 v2, v2, -0x32

    iput v2, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->elapsed:I

    iget v2, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->elapsed:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    iget v2, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->interval:I

    iput v2, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->elapsed:I

    iget-object v2, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->timer:Lcn/kuwo/base/util/KwTimer;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->timer:Lcn/kuwo/base/util/KwTimer;

    invoke-static {v0}, Lcn/kuwo/base/util/KwTimer;->access$300(Lcn/kuwo/base/util/KwTimer;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingNum:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getThreadTimerHelper()Lcn/kuwo/base/util/KwTimer$TimerHelper;
    .locals 2

    sget-object v0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->threadLocal:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->threadLocal:Ljava/lang/ThreadLocal;

    :cond_0
    sget-object v0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/util/KwTimer$TimerHelper;

    if-nez v0, :cond_1

    new-instance v0, Lcn/kuwo/base/util/KwTimer$TimerHelper;

    invoke-direct {v0}, Lcn/kuwo/base/util/KwTimer$TimerHelper;-><init>()V

    sget-object v1, Lcn/kuwo/base/util/KwTimer$TimerHelper;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private remove(Lcn/kuwo/base/util/KwTimer;)V
    .locals 3

    const-string v0, "KwTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove timer,total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingNum:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/kuwo/base/util/KwTimer;->access$002(Lcn/kuwo/base/util/KwTimer;Z)Z

    iget-object v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->allTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;

    iget-object v2, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->timer:Lcn/kuwo/base/util/KwTimer;

    if-ne v2, p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/kuwo/base/util/KwTimer$TimerHelper$TimingItem;->timer:Lcn/kuwo/base/util/KwTimer;

    :cond_1
    return-void
.end method

.method public static setTimer(Lcn/kuwo/base/util/KwTimer;)V
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->getThreadTimerHelper()Lcn/kuwo/base/util/KwTimer$TimerHelper;

    move-result-object v0

    invoke-direct {v0, p0}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->add(Lcn/kuwo/base/util/KwTimer;)V

    return-void
.end method

.method public static stopTimer(Lcn/kuwo/base/util/KwTimer;)V
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->getThreadTimerHelper()Lcn/kuwo/base/util/KwTimer$TimerHelper;

    move-result-object v0

    invoke-direct {v0, p0}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->remove(Lcn/kuwo/base/util/KwTimer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-wide/16 v4, 0x32

    const/16 v2, 0x3e9

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->dispatch()V

    iget v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingNum:I

    if-lez v0, :cond_1

    invoke-virtual {p0, v2, v4, v5}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingIdle:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v2, v4, v5}, Lcn/kuwo/base/util/KwTimer$TimerHelper;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingIdle:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timingIdle:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->timerMessageRunning:Z

    iget-object v0, p0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->allTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcn/kuwo/base/util/KwTimer$TimerHelper;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    const-string v0, "KwTimer"

    const-string v1, "KwTimer threadLocal removed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
