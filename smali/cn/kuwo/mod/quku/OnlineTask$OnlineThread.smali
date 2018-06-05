.class public final Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/kuwo/mod/quku/OnlineExtra;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcn/kuwo/mod/quku/OnRequestListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/kuwo/mod/quku/OnlineExtra;Lcn/kuwo/mod/quku/OnRequestListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->b:Lcn/kuwo/mod/quku/OnlineExtra;

    iput-object p3, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->d:Lcn/kuwo/mod/quku/OnRequestListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;)Lcn/kuwo/mod/quku/OnRequestListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->d:Lcn/kuwo/mod/quku/OnRequestListener;

    return-object v0
.end method

.method private a(Lcn/kuwo/mod/quku/QukuRequestState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/QukuRequestState;[B)V

    return-void
.end method

.method private a(Lcn/kuwo/mod/quku/QukuRequestState;[B)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread$1;-><init>(Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;Lcn/kuwo/mod/quku/QukuRequestState;[B)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method private a([BLcn/kuwo/mod/quku/QukuRequestState;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/QukuRequestState;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->c:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/QukuRequestState;)V

    sget-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->a:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0, p1}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/QukuRequestState;[B)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .locals 6

    const/16 v2, 0xe10

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "QUKU_CACHE"

    iget-object v3, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcn/kuwo/base/cache/CacheMgr;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isOnlyWifiConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->e:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/QukuRequestState;)V

    :goto_0
    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a()V

    return-void

    :cond_0
    if-eqz v0, :cond_6

    sget-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->c:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/QukuRequestState;)V

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "QUKU_CACHE"

    iget-object v3, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcn/kuwo/base/cache/CacheMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v0}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    iget-object v1, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->b:Lcn/kuwo/mod/quku/OnlineExtra;

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineExtra;->d()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineType;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcn/kuwo/mod/quku/OnlineTask;->a(Lcn/kuwo/base/http/HttpResult;)[B

    move-result-object v5

    if-nez v5, :cond_1

    const-string v0, "OnlineTask"

    const-string v1, "OnlineThread [run] decode xml error"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->b:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/QukuRequestState;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->a:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0, v5}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/QukuRequestState;[B)V

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "QUKU_CACHE"

    iget-object v3, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->b:Lcn/kuwo/mod/quku/OnlineExtra;

    invoke-virtual {v3}, Lcn/kuwo/mod/quku/OnlineExtra;->d()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v3

    invoke-virtual {v3}, Lcn/kuwo/mod/quku/OnlineType;->b()I

    move-result v3

    iget-object v4, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;IILjava/lang/String;[B)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->b:Lcn/kuwo/mod/quku/OnlineExtra;

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineExtra;->d()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineType;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v5, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    sget-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->a:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0, v5}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/QukuRequestState;[B)V

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "QUKU_CACHE"

    iget-object v3, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->b:Lcn/kuwo/mod/quku/OnlineExtra;

    invoke-virtual {v3}, Lcn/kuwo/mod/quku/OnlineExtra;->d()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v3

    invoke-virtual {v3}, Lcn/kuwo/mod/quku/OnlineType;->b()I

    move-result v3

    iget-object v4, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;IILjava/lang/String;[B)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    sget-object v1, Lcn/kuwo/mod/quku/QukuRequestState;->b:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a([BLcn/kuwo/mod/quku/QukuRequestState;)V

    goto/16 :goto_0

    :cond_4
    if-nez v0, :cond_5

    const-string v0, "OnlineTask"

    const-string v1, "OnlineThread [run] result is null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcn/kuwo/mod/quku/QukuRequestState;->b:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/QukuRequestState;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "OnlineTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnlineThread [run] code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcn/kuwo/base/http/HttpResult;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "QUKU_CACHE"

    iget-object v2, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/cache/CacheMgr;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/quku/QukuRequestState;->b:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a([BLcn/kuwo/mod/quku/QukuRequestState;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "QUKU_CACHE"

    iget-object v2, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/cache/CacheMgr;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/quku/QukuRequestState;->d:Lcn/kuwo/mod/quku/QukuRequestState;

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a([BLcn/kuwo/mod/quku/QukuRequestState;)V

    goto/16 :goto_0
.end method
