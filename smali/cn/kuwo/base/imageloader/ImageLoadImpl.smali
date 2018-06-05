.class public Lcn/kuwo/base/imageloader/ImageLoadImpl;
.super Ljava/lang/Thread;

# interfaces
.implements Lcn/kuwo/base/http/IHttpNotify;


# instance fields
.field private volatile a:Landroid/os/Handler;

.field private volatile b:Z

.field private volatile c:I

.field private d:J

.field private e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a:Landroid/os/Handler;

    iput-boolean v1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->b:Z

    iput v1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->d:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->e:Ljava/util/HashMap;

    const-string v0, "SmallPicCacheMgrImplThread"

    invoke-virtual {p0, v0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private a()J
    .locals 8

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->d:J

    sub-long v0, v4, v0

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    const-wide/16 v6, 0xc8

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    :goto_0
    add-long v2, v4, v0

    iput-wide v2, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->d:J

    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcn/kuwo/base/imageloader/ImageLoadImpl;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/kuwo/base/imageloader/ImageLoadImpl;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/kuwo/base/imageloader/ImageLoadImpl;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/kuwo/base/imageloader/ImageLoadImpl;Ljava/lang/String;[B)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(ZLjava/lang/String;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->d:Ljava/util/LinkedList;

    new-instance v2, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;

    iget-object v3, p2, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->d:Lcn/kuwo/base/imageloader/ImageLoadListener;

    iget-object v4, p2, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->e:Ljava/lang/Object;

    iget-boolean v5, p2, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->f:Z

    iget-boolean v6, p2, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->g:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;-><init>(Lcn/kuwo/base/imageloader/ImageLoadListener;Ljava/lang/Object;ZZ)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p2, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    if-nez v0, :cond_1

    const-string v0, "SmallPicCacheMgrImpl"

    const-string v1, "[onAddTask] categoryName is null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1, v10, v10}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(ZLjava/lang/String;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v3, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;

    invoke-direct {v3, v10}, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;-><init>(Lcn/kuwo/base/imageloader/ImageLoadImpl$1;)V

    iput-object p1, v3, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->a:Ljava/lang/String;

    iput-object v0, v3, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    iget-object v4, v3, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->d:Ljava/util/LinkedList;

    new-instance v5, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;

    iget-object v6, p2, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->d:Lcn/kuwo/base/imageloader/ImageLoadListener;

    iget-object v7, p2, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->e:Ljava/lang/Object;

    iget-boolean v8, p2, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->f:Z

    iget-boolean v9, p2, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->g:Z

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;-><init>(Lcn/kuwo/base/imageloader/ImageLoadListener;Ljava/lang/Object;ZZ)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v4

    invoke-virtual {v0}, Lcn/kuwo/base/cache/CacheCategoryNames;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcn/kuwo/base/cache/CacheMgr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v5

    invoke-virtual {v0}, Lcn/kuwo/base/cache/CacheCategoryNames;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1}, Lcn/kuwo/base/cache/CacheMgr;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1, p1, v4, v10}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(ZLjava/lang/String;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    const/4 v4, 0x6

    if-ge v0, v4, :cond_6

    new-instance v0, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v0}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    iput-object v0, v3, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isOnlyWifiConnect()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, v3, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0, p1, p0}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iput-object v10, v3, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    const-string v0, "SmallPicCacheMgrImpl"

    const-string v1, "[onAddTask] call asyncGet failed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1, v10, v10}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(ZLjava/lang/String;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z

    move v0, v2

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(ZLjava/lang/String;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;[B)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;

    if-nez v0, :cond_0

    const-string v0, "SmallPicCacheMgrImpl"

    const-string v1, "[onRequestSuccess] cannot find the task"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v9, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    if-nez v9, :cond_1

    invoke-direct {p0, v6, p1, v7, v7}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(ZLjava/lang/String;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    invoke-virtual {v9}, Lcn/kuwo/base/cache/CacheCategoryNames;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcn/kuwo/base/cache/CacheCategoryNames;->a()I

    move-result v2

    invoke-virtual {v9}, Lcn/kuwo/base/cache/CacheCategoryNames;->b()I

    move-result v3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;IILjava/lang/String;[B)V

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    invoke-virtual {v9}, Lcn/kuwo/base/cache/CacheCategoryNames;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/kuwo/base/cache/CacheMgr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SmallPicCacheMgrImpl"

    const-string v2, "[run] cache file failed"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v6

    :goto_1
    if-nez v1, :cond_3

    invoke-direct {p0, v6, p1, v7, v7}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(ZLjava/lang/String;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_1

    :cond_3
    invoke-direct {p0, v8, p1, v0, v7}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(ZLjava/lang/String;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move-object v0, v7

    move v1, v6

    goto :goto_1
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Lcn/kuwo/base/imageloader/ImageLoadListener;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;

    if-nez v0, :cond_0

    const-string v0, "SmallPicCacheMgrImpl"

    const-string v1, "[notifyFinish] cannot find the task"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-eqz p4, :cond_9

    iget-object v1, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;

    iget-object v4, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->a:Lcn/kuwo/base/imageloader/ImageLoadListener;

    if-ne v4, p4, :cond_1

    :goto_1
    if-nez v1, :cond_2

    const-string v0, "SmallPicCacheMgrImpl"

    const-string v1, "[notifyFinish] cannot find the listener"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v6, :cond_7

    iget-object v2, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v2}, Lcn/kuwo/base/http/HttpSession;->a()Z

    iput-object v7, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    iget v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    :cond_3
    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v5, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->b:Ljava/lang/Object;

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a()J

    move-result-wide v0

    :goto_3
    cmp-long v2, v0, v8

    if-lez v2, :cond_8

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v8

    long-to-int v9, v0

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a()Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    move-result-object v0

    move-object v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->a(Lcn/kuwo/base/imageloader/ImageLoadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_5
    iget v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    const/4 v3, 0x6

    if-ge v0, v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;

    iget-object v3, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    if-nez v3, :cond_4

    new-instance v3, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v3}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    iput-object v3, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isOnlyWifiConnect()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isWifi()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    iget-object v4, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v7, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    goto :goto_5

    :cond_7
    iget-object v0, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v8

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->a()Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    move-result-object v0

    move-object v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;->a(Lcn/kuwo/base/imageloader/ImageLoadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcn/kuwo/base/imageloader/ImageNotifyRunner$FinishRunner;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    if-eqz v1, :cond_a

    iput-object v7, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    iget v1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    :cond_a
    iget-object v1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a()J

    move-result-wide v2

    :goto_6
    cmp-long v1, v2, v8

    if-lez v1, :cond_b

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    long-to-int v2, v2

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->b()Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    move-result-object v3

    iget-object v0, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->d:Ljava/util/LinkedList;

    invoke-virtual {v3, v0, p1, p2, p3}, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->a(Ljava/util/LinkedList;ZLjava/lang/String;Ljava/lang/String;)Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto/16 :goto_4

    :cond_b
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/base/imageloader/ImageNotifyRunner;->b()Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    move-result-object v2

    iget-object v0, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v0, p1, p2, p3}, Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;->a(Ljava/util/LinkedList;ZLjava/lang/String;Ljava/lang/String;)Lcn/kuwo/base/imageloader/ImageNotifyRunner$DelayFinishRunner;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto/16 :goto_4

    :cond_c
    iget v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->c:I

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "SmallPicCacheMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notifyFinish] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tasks failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;

    iget-object v0, v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v2, Lcn/kuwo/base/imageloader/ImageLoadImpl$2;

    invoke-direct {v2, p0, v1}, Lcn/kuwo/base/imageloader/ImageLoadImpl$2;-><init>(Lcn/kuwo/base/imageloader/ImageLoadImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_f
    move v0, v6

    goto/16 :goto_0

    :cond_10
    move-wide v2, v8

    goto/16 :goto_6

    :cond_11
    move-wide v0, v8

    goto/16 :goto_3

    :cond_12
    move-object v1, v7

    goto/16 :goto_1
.end method


# virtual methods
.method public IHttpNotifyFailed(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 3

    const-string v0, "SmallPicCacheMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IHttpNotifyFailed] re.errorDescrib = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;

    invoke-direct {v1}, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;-><init>()V

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->k:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Landroid/os/Message;)Z

    return-void
.end method

.method public IHttpNotifyFinish(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;

    invoke-direct {v1}, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;-><init>()V

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->k:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->a:Ljava/lang/String;

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->c:[B

    iput-object v2, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->c:[B

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Landroid/os/Message;)Z

    return-void
.end method

.method public IHttpNotifyProgress(Lcn/kuwo/base/http/HttpSession;II[BI)V
    .locals 0

    return-void
.end method

.method public IHttpNotifyStart(Lcn/kuwo/base/http/HttpSession;ILcn/kuwo/base/http/HttpResult;)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized a(Landroid/os/Message;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->start()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "SmallPicCacheMgrImpl"

    const-string v1, "[sendMessage] mHandler is null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcn/kuwo/base/cache/CacheCategoryNames;Lcn/kuwo/base/imageloader/ImageLoadListener;Ljava/lang/Object;ZZ)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;

    invoke-direct {v1}, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;-><init>()V

    iput-object p1, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->a:Ljava/lang/String;

    iput-object p2, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    iput-object p3, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->d:Lcn/kuwo/base/imageloader/ImageLoadListener;

    iput-object p4, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->e:Ljava/lang/Object;

    iput-boolean p5, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->f:Z

    iput-boolean p6, v1, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->g:Z

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcn/kuwo/base/imageloader/ImageLoadImpl$1;

    invoke-direct {v0, p0}, Lcn/kuwo/base/imageloader/ImageLoadImpl$1;-><init>(Lcn/kuwo/base/imageloader/ImageLoadImpl;)V

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->b:Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-boolean v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method
