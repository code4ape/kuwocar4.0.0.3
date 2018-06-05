.class public Lcom/github/anrwatchdog/ANRWatchDog;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

.field private static final b:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;


# instance fields
.field private c:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

.field private d:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

.field private final e:Landroid/os/Handler;

.field private final f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private volatile j:I

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/anrwatchdog/ANRWatchDog$1;

    invoke-direct {v0}, Lcom/github/anrwatchdog/ANRWatchDog$1;-><init>()V

    sput-object v0, Lcom/github/anrwatchdog/ANRWatchDog;->a:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    new-instance v0, Lcom/github/anrwatchdog/ANRWatchDog$2;

    invoke-direct {v0}, Lcom/github/anrwatchdog/ANRWatchDog$2;-><init>()V

    sput-object v0, Lcom/github/anrwatchdog/ANRWatchDog;->b:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/github/anrwatchdog/ANRWatchDog;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lcom/github/anrwatchdog/ANRWatchDog;->a:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->c:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    sget-object v0, Lcom/github/anrwatchdog/ANRWatchDog;->b:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->d:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->e:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->g:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->h:Z

    iput-boolean v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->i:Z

    iput v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->j:I

    new-instance v0, Lcom/github/anrwatchdog/ANRWatchDog$3;

    invoke-direct {v0, p0}, Lcom/github/anrwatchdog/ANRWatchDog$3;-><init>(Lcom/github/anrwatchdog/ANRWatchDog;)V

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->k:Ljava/lang/Runnable;

    iput p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->f:I

    return-void
.end method

.method static synthetic a(Lcom/github/anrwatchdog/ANRWatchDog;)I
    .locals 1

    iget v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->j:I

    return v0
.end method

.method static synthetic a(Lcom/github/anrwatchdog/ANRWatchDog;I)I
    .locals 0

    iput p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->j:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "|ANR-WatchDog|"

    invoke-virtual {p0, v0}, Lcom/github/anrwatchdog/ANRWatchDog;->setName(Ljava/lang/String;)V

    const/4 v0, -0x1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/github/anrwatchdog/ANRWatchDog;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->j:I

    iget-object v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/github/anrwatchdog/ANRWatchDog;->k:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->f:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->j:I

    if-ne v2, v1, :cond_0

    iget-boolean v1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->i:Z

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->j:I

    if-eq v1, v0, :cond_1

    const-string v0, "ANRWatchdog"

    const-string v1, "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->j:I

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->d:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    invoke-interface {v1, v0}, Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;->onInterrupted(Ljava/lang/InterruptedException;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->g:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->h:Z

    invoke-static {v0, v1}, Lcom/github/anrwatchdog/ANRError;->a(Ljava/lang/String;Z)Lcom/github/anrwatchdog/ANRError;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->c:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    invoke-interface {v1, v0}, Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;->onAppNotResponding(Lcom/github/anrwatchdog/ANRError;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/github/anrwatchdog/ANRError;->a()Lcom/github/anrwatchdog/ANRError;

    move-result-object v0

    goto :goto_2
.end method
