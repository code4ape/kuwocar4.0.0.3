.class public Lcn/kuwo/base/image/deque/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;

# interfaces
.implements Lcn/kuwo/base/image/deque/BlockingDeque;
.implements Ljava/io/Serializable;


# instance fields
.field transient a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

.field transient b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

.field final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private transient d:I

.field private final e:I

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->f:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->g:Ljava/util/concurrent/locks/Condition;

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->e:I

    return-void
.end method

.method private b(Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;)Z
    .locals 2

    iget v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    iget v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->e:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iput-object v0, p1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iput-object p1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    :goto_1
    iget v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private c(Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;)Z
    .locals 2

    iget v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    iget v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->e:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iput-object v0, p1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iput-object p1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    :goto_1
    iget v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private f()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, v2, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iget-object v1, v2, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    iput-object v0, v2, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    iput-object v2, v2, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iput-object v3, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    if-nez v3, :cond_1

    iput-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    :goto_1
    iget v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v0, v3, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private g()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, v2, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iget-object v1, v2, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    iput-object v0, v2, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    iput-object v2, v2, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iput-object v3, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    if-nez v3, :cond_1

    iput-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    :goto_1
    iget v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v0, v3, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v4, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    move-wide v2, v0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->f()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method a(Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;)V
    .locals 2

    iget-object v0, p1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iget-object v1, p1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->f()Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->g()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iput-object v0, v1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    const/4 v0, 0x0

    iput-object v0, p1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    iget v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v2, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    invoke-direct {v2, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v3, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-direct {p0, v2}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c(Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return v0

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->f()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0, v0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b(Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->f()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0, v0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c(Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public clear()V
    .locals 4

    iget-object v2, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    iget-object v1, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iput-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, v1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c(Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iget-object v3, v3, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->f()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public e()Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    iget-object v0, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a(Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, v1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Itr;-><init>(Lcn/kuwo/base/image/deque/LinkedBlockingDeque;Lcn/kuwo/base/image/deque/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    iget-object v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->e:I

    iget v2, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    iget-object v5, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    aput-object v5, v4, v1

    iget-object v0, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    iget-object v3, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    array-length v0, p1

    iget v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->d:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    iget-object v4, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    aput-object v4, p1, v1

    iget-object v0, v0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    move v1, v2

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aput-object v0, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/image/deque/LinkedBlockingDeque;->a:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    if-nez v0, :cond_0

    const-string v0, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->a:Ljava/lang/Object;

    if-ne v0, p0, :cond_1

    const-string v0, "(this Collection)"

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;->c:Lcn/kuwo/base/image/deque/LinkedBlockingDeque$Node;

    if-nez v0, :cond_2

    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x2c

    :try_start_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
