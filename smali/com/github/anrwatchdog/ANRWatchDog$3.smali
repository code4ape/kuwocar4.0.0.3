.class Lcom/github/anrwatchdog/ANRWatchDog$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/github/anrwatchdog/ANRWatchDog;


# direct methods
.method constructor <init>(Lcom/github/anrwatchdog/ANRWatchDog;)V
    .locals 0

    iput-object p1, p0, Lcom/github/anrwatchdog/ANRWatchDog$3;->a:Lcom/github/anrwatchdog/ANRWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog$3;->a:Lcom/github/anrwatchdog/ANRWatchDog;

    iget-object v1, p0, Lcom/github/anrwatchdog/ANRWatchDog$3;->a:Lcom/github/anrwatchdog/ANRWatchDog;

    invoke-static {v1}, Lcom/github/anrwatchdog/ANRWatchDog;->a(Lcom/github/anrwatchdog/ANRWatchDog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/github/anrwatchdog/ANRWatchDog;->a(Lcom/github/anrwatchdog/ANRWatchDog;I)I

    return-void
.end method
