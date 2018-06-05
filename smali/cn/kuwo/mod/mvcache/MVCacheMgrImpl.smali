.class public Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/mvcache/IMVCacheMgr;
.implements Lcn/kuwo/mod/mvcache/cache/IHttpCacheDownloadListener;


# static fields
.field public static volatile p:Z

.field public static volatile q:Ljava/lang/String;

.field public static volatile r:I

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:[Ljava/lang/String;

.field private static volatile x:I

.field private static y:Z


# instance fields
.field a:Lcn/kuwo/base/bean/Music;

.field b:Landroid/net/Uri;

.field c:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

.field d:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:J

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Z

.field private v:Ljava/util/Random;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, ".dat"

    sput-object v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->s:Ljava/lang/String;

    const-string v0, ".delay"

    sput-object v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->t:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sget-object v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->s:Ljava/lang/String;

    aput-object v1, v0, v2

    sput-object v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->u:[Ljava/lang/String;

    sput v3, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->x:I

    sput-boolean v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->p:Z

    const-string v0, ""

    sput-object v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->q:Ljava/lang/String;

    sput v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->r:I

    sput-boolean v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->y:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->e:Z

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->f:Z

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->g:Z

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->h:Z

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->i:Z

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->j:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->k:J

    const/4 v0, 0x4

    iput v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->l:I

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->v:Ljava/util/Random;

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->o:Z

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->w:I

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->w:I

    return v0
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/http/IHttpNotify;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "MVURL"

    const-string v1, "http://datacenter.kuwo.cn/d.c?"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://datacenter.kuwo.cn/d.c?ft=music&ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cmkey=music_mvpic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v1}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v1, "http://img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->x:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->x:I

    sget v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->x:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    sput v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->x:I

    :cond_0
    const-string v1, ".kwcdn.kuwo.cn:81/wmvpic/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    invoke-static {v2}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->i:Z

    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->g:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->w:I

    const-string v0, "CacheDown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---startCacheFile---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->v:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$14;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$14;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0
.end method

.method public a(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;I)V
    .locals 3

    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->w:I

    if-eq v0, p2, :cond_0

    iput p2, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->w:I

    const-string v0, "CacheDown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---downloadCacheProcess-------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->v:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$16;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$16;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0
.end method

.method public a(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;J)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->i:Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->v:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$15;

    invoke-direct {v2, p0, p2, p3}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$15;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;J)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public a(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;Ljava/lang/Exception;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->i:Z

    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->v:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$17;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$17;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_0
    iput-boolean v3, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->j:Z

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->g:Z

    iget v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->l:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean v3, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->e:Z

    iput-boolean v3, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->f:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->e:Z

    iput-boolean v3, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->f:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->e:Z

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->f:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v3, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->e:Z

    iput-boolean v4, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->f:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->c:Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;

    invoke-interface {v0}, Lcn/kuwo/mod/mvcache/cache/IHttpCacheFilter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    new-instance v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;

    invoke-direct {v2, p0, p1, v0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->v:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$6;

    invoke-direct {v3, p0, v0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$6;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->v:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$7;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$7;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;)V
    .locals 6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->i:Z

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->d:J

    iget-wide v4, p1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->e:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->h:Z

    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "CacheDown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---endCacheFile---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcn/kuwo/mod/mvcache/cache/CacheFilterNode;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->g:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
