.class public Lcom/github/anrwatchdog/ANRError;
.super Ljava/lang/Error;


# direct methods
.method private constructor <init>(Lcom/github/anrwatchdog/ANRError$$$_Thread;)V
    .locals 1

    const-string v0, "Application Not Responding"

    invoke-direct {p0, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static a()Lcom/github/anrwatchdog/ANRError;
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    new-instance v2, Lcom/github/anrwatchdog/ANRError;

    new-instance v3, Lcom/github/anrwatchdog/ANRError$$$_Thread;

    new-instance v4, Lcom/github/anrwatchdog/ANRError$$;

    invoke-static {v0}, Lcom/github/anrwatchdog/ANRError;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v1, v5}, Lcom/github/anrwatchdog/ANRError$$;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/github/anrwatchdog/ANRError$1;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v5, v5}, Lcom/github/anrwatchdog/ANRError$$$_Thread;-><init>(Lcom/github/anrwatchdog/ANRError$$;Lcom/github/anrwatchdog/ANRError$$$_Thread;Lcom/github/anrwatchdog/ANRError$1;)V

    invoke-direct {v2, v3}, Lcom/github/anrwatchdog/ANRError;-><init>(Lcom/github/anrwatchdog/ANRError$$$_Thread;)V

    return-object v2
.end method

.method static a(Ljava/lang/String;Z)Lcom/github/anrwatchdog/ANRError;
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v4, Ljava/util/TreeMap;

    new-instance v0, Lcom/github/anrwatchdog/ANRError$1;

    invoke-direct {v0, v2}, Lcom/github/anrwatchdog/ANRError$1;-><init>(Ljava/lang/Thread;)V

    invoke-direct {v4, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    array-length v1, v1

    if-lez v1, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/github/anrwatchdog/ANRError$$$_Thread;

    new-instance v6, Lcom/github/anrwatchdog/ANRError$$;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-static {v1}, Lcom/github/anrwatchdog/ANRError;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-direct {v6, v1, v0, v3}, Lcom/github/anrwatchdog/ANRError$$;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/github/anrwatchdog/ANRError$1;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v6, v2, v3}, Lcom/github/anrwatchdog/ANRError$$$_Thread;-><init>(Lcom/github/anrwatchdog/ANRError$$;Lcom/github/anrwatchdog/ANRError$$$_Thread;Lcom/github/anrwatchdog/ANRError$1;)V

    move-object v2, v4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/github/anrwatchdog/ANRError;

    invoke-direct {v0, v2}, Lcom/github/anrwatchdog/ANRError;-><init>(Lcom/github/anrwatchdog/ANRError$$$_Thread;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/github/anrwatchdog/ANRError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method
