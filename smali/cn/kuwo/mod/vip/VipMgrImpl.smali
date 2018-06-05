.class public Lcn/kuwo/mod/vip/VipMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IDownloadMgrObserver;
.implements Lcn/kuwo/mod/vip/IVipMgr;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/vip/VipMgrImpl;->a:Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->f:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .locals 9

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_0

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Lcn/kuwo/base/http/HttpResult;IIILcn/kuwo/mod/userinfo/IUserInfoMgr;)Z
    .locals 13

    if-nez p5, :cond_0

    const-string v2, "VipMgrImpl"

    const-string v3, "userInfoMgr is null|handleSyncResult"

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/kuwo/mod/vip/VipMgrImpl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v2, "result"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "result"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "ok"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "vip_info"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "vip_type"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "vip_expire"

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "next_avail_date"

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "dcinfo"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface/range {p5 .. p5}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->i()Lcn/kuwo/base/bean/VipInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcn/kuwo/base/bean/VipInfo;->h()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-virtual {v7}, Lcn/kuwo/base/bean/VipInfo;->i()I

    move-result v9

    sub-int v9, v9, p3

    invoke-virtual {v7}, Lcn/kuwo/base/bean/VipInfo;->j()I

    move-result v10

    sub-int v10, v10, p4

    invoke-virtual {v7, v8}, Lcn/kuwo/base/bean/VipInfo;->f(I)V

    invoke-virtual {v7, v9}, Lcn/kuwo/base/bean/VipInfo;->g(I)V

    invoke-virtual {v7, v10}, Lcn/kuwo/base/bean/VipInfo;->h(I)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "kuwo.cn"

    invoke-static {v2, v11}, Lcn/kuwo/base/crypt/SecurityCoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    const-string v12, " "

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/kuwo/mod/vip/VipMgrImpl;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcn/kuwo/base/bean/VipInfo;->setVipLevel(I)V

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "kuwo.cn"

    invoke-static {v3, v2}, Lcn/kuwo/base/crypt/SecurityCoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/kuwo/mod/vip/VipMgrImpl;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcn/kuwo/base/bean/VipInfo;->a(I)V

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "kuwo.cn"

    invoke-static {v4, v2}, Lcn/kuwo/base/crypt/SecurityCoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/kuwo/mod/vip/VipMgrImpl;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcn/kuwo/base/bean/VipInfo;->b(I)V

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "kuwo.cn"

    invoke-static {v5, v2}, Lcn/kuwo/base/crypt/SecurityCoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcn/kuwo/base/bean/VipInfo;->a(Ljava/lang/String;)V

    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "kuwo.cn"

    invoke-static {v6, v2}, Lcn/kuwo/base/crypt/SecurityCoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_5

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/kuwo/mod/vip/VipMgrImpl;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/kuwo/mod/vip/VipMgrImpl;->b(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    const/4 v6, 0x4

    const/4 v11, 0x2

    aget-object v2, v2, v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/kuwo/mod/vip/VipMgrImpl;->b(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v3, v8

    invoke-virtual {v7, v3}, Lcn/kuwo/base/bean/VipInfo;->c(I)V

    sub-int v3, v4, v9

    invoke-virtual {v7, v3}, Lcn/kuwo/base/bean/VipInfo;->d(I)V

    sub-int/2addr v2, v10

    invoke-virtual {v7, v2}, Lcn/kuwo/base/bean/VipInfo;->e(I)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v7, v2, v3}, Lcn/kuwo/base/bean/VipInfo;->a(J)V

    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/VipInfo;)V

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/kuwo/mod/vip/VipMgrImpl;->a:Z

    goto/16 :goto_0

    :cond_6
    const-string v2, "VipMgrImpl"

    const-string v4, "\u540c\u6b65\u53d1\u751f\u9519\u8bef\uff0cresult fail"

    invoke-static {v2, v4}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_1

    :cond_7
    const-string v2, "VipMgrImpl"

    const-string v4, "\u540c\u6b65\u53d1\u751f\u9519\u8bef\uff0cgen resultMap fail"

    invoke-static {v2, v4}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v2, v3

    goto :goto_1

    :cond_8
    const-string v2, "VipMgrImpl"

    const-string v4, "\u540c\u6b65\u53d1\u751f\u9519\u8bef"

    invoke-static {v2, v4}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "VipMgrImpl"

    invoke-static {v2, v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcn/kuwo/mod/userinfo/IUserInfoMgr;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "VipMgrImpl"

    const-string v2, "userInfoMgr is null|buildSyncUrl"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v1

    invoke-interface {p1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->i()Lcn/kuwo/base/bean/VipInfo;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mp3-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/VipInfo;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";ape-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/VipInfo;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";mkv-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/VipInfo;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "kuwo.cn"

    invoke-static {v2, v3}, Lcn/kuwo/base/crypt/SecurityCoder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "http://checkdcserver.kuwo.cn/u.dc?type=updatedc"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&sid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&req_enc=utf8&res_enc=utf8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public IDownloadObserver_OnListChanged(I)V
    .locals 0

    return-void
.end method

.method public IDownloadObserver_OnProgressChanged(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    return-void
.end method

.method public IDownloadObserver_OnStateChanged(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v2, Lcn/kuwo/mod/download/DownloadState;->e:Lcn/kuwo/mod/download/DownloadState;

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v1, "vip"

    const-string v3, "vip_on"

    invoke-static {v1, v3, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    monitor-enter p0

    :try_start_0
    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->i()Lcn/kuwo/base/bean/VipInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v1

    sget v4, Lcn/kuwo/base/bean/UserInfo;->e:I

    if-eq v1, v4, :cond_3

    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->h()I

    move-result v4

    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->i()I

    move-result v5

    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->k()I

    move-result v6

    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->j()I

    move-result v7

    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->e()I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v3, v4}, Lcn/kuwo/base/bean/VipInfo;->f(I)V

    invoke-virtual {v3, v1}, Lcn/kuwo/base/bean/VipInfo;->c(I)V

    invoke-interface {v2, v3}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/VipInfo;)V

    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->l()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-int v1, v4, v5

    add-int/2addr v1, v6

    add-int/2addr v1, v7

    const/16 v3, 0xa

    if-ge v1, v3, :cond_2

    sub-long v4, v10, v8

    const-wide/16 v6, 0xe10

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/mod/vip/VipMgrImpl$2;

    invoke-direct {v1, p0, v2}, Lcn/kuwo/mod/vip/VipMgrImpl$2;-><init>(Lcn/kuwo/mod/vip/VipMgrImpl;Lcn/kuwo/mod/userinfo/IUserInfoMgr;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    :cond_3
    monitor-exit p0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcn/kuwo/service/DownloadProxy$Quality;)I
    .locals 6

    const/4 v1, -0x1

    const/4 v0, 0x1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v2

    const-string v3, "vip"

    const-string v4, "vip_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->i()Lcn/kuwo/base/bean/VipInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v2

    sget v4, Lcn/kuwo/base/bean/UserInfo;->e:I

    if-ne v2, v4, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->e:Lcn/kuwo/service/DownloadProxy$Quality;

    if-ne p1, v2, :cond_4

    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->b()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v0, -0x5

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->b()I

    move-result v2

    if-eq v2, v1, :cond_5

    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->b()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->c()I

    move-result v1

    const/16 v2, 0x3a98

    if-le v1, v2, :cond_6

    :cond_5
    const/4 v0, -0x2

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->b()I

    move-result v1

    if-ltz v1, :cond_7

    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->c()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v0, -0x3

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lcn/kuwo/base/bean/VipInfo;->e()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, -0x4

    goto :goto_0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcn/kuwo/mod/userinfo/IUserInfoMgr;)Z
    .locals 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const-string v0, "VipMgrImpl"

    const-string v1, "userInfoMgr is null|syncBalance"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcn/kuwo/mod/vip/VipMgrImpl;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "VipMgrImpl"

    const-string v1, "sync fail cuz last sync not finish"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_1
    iput-boolean v7, p0, Lcn/kuwo/mod/vip/VipMgrImpl;->a:Z

    invoke-interface {p1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->i()Lcn/kuwo/base/bean/VipInfo;

    move-result-object v8

    invoke-direct {p0, p1}, Lcn/kuwo/mod/vip/VipMgrImpl;->b(Lcn/kuwo/mod/userinfo/IUserInfoMgr;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "VipMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncUrl is not correct,url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcn/kuwo/mod/vip/VipMgrImpl;->a:Z

    move v0, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lcn/kuwo/base/bean/VipInfo;->h()I

    move-result v2

    invoke-virtual {v8}, Lcn/kuwo/base/bean/VipInfo;->i()I

    move-result v3

    invoke-virtual {v8}, Lcn/kuwo/base/bean/VipInfo;->j()I

    move-result v4

    new-instance v1, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v1}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const-wide/16 v10, 0x7530

    invoke-virtual {v1, v10, v11}, Lcn/kuwo/base/http/HttpSession;->a(J)V

    invoke-virtual {v1, v0}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v1

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/mod/vip/VipMgrImpl;->a(Lcn/kuwo/base/http/HttpResult;IIILcn/kuwo/mod/userinfo/IUserInfoMgr;)Z

    move-result v0

    const-string v1, "VipMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after sync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcn/kuwo/base/bean/VipInfo;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcn/kuwo/base/bean/VipInfo;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcn/kuwo/base/bean/VipInfo;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcn/kuwo/base/bean/VipInfo;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcn/kuwo/base/bean/VipInfo;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcn/kuwo/base/bean/VipInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcn/kuwo/base/bean/VipInfo;->l()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->r:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/vip/VipMgrImpl$1;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/vip/VipMgrImpl$1;-><init>(Lcn/kuwo/mod/vip/VipMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    move v0, v7

    goto/16 :goto_0

    :cond_4
    move v0, v6

    goto/16 :goto_0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->f:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method
