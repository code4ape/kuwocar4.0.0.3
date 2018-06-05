.class public final Lcn/kuwo/base/config/ConfMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/http/IHttpNotify;


# instance fields
.field private a:Lcn/kuwo/base/config/basic/FileConfig;

.field private b:Lcn/kuwo/base/config/basic/FileConfig;

.field private c:Lcn/kuwo/base/http/HttpSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/base/config/ConfMgrImpl;Lcn/kuwo/base/http/HttpSession;)Lcn/kuwo/base/http/HttpSession;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/config/ConfMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    return-object p1
.end method

.method static synthetic a(Lcn/kuwo/base/config/ConfMgrImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->h:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/base/config/ConfMgrImpl$3;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/base/config/ConfMgrImpl$3;-><init>(Lcn/kuwo/base/config/ConfMgrImpl;Z)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/base/config/ConfMgrImpl;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ConfigMgrImpl"

    const-string v2, "[analysisUpdateResult] emtpy param"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-static {p1}, Lcn/kuwo/base/crypt/Base64Coder;->a(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "gbk"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "ConfigMgrImpl"

    const-string v5, "[analysisUpdateResult] emtpy string after decode"

    invoke-static {v4, v5}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    :try_start_4
    new-instance v7, Ljava/io/ByteArrayInputStream;

    const-string v3, "utf-8"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v3, Lcn/kuwo/base/config/basic/FileConfig;

    invoke-direct {v3}, Lcn/kuwo/base/config/basic/FileConfig;-><init>()V

    invoke-virtual {v3, v7}, Lcn/kuwo/base/config/basic/FileConfig;->a(Ljava/io/InputStream;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v3, "ConfigMgrImpl"

    const-string v4, "[analysisUpdateResult] load config failed"

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_5
    :goto_3
    if-eqz v7, :cond_6

    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :cond_6
    :goto_4
    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_7
    :try_start_9
    iput-object v3, p0, Lcn/kuwo/base/config/ConfMgrImpl;->a:Lcn/kuwo/base/config/basic/FileConfig;

    const-string v1, "ConfigMgrImpl"

    const-string v4, "[analysisUpdateResult] load config success, group num = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcn/kuwo/base/config/basic/FileConfig;->c()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v3, v8}, Lcn/kuwo/base/config/basic/FileConfig;->a(Ljava/io/OutputStream;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v6

    if-eqz v6, :cond_8

    :try_start_b
    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "CONFIG_CACHE"

    sget-object v2, Lcn/kuwo/base/cache/CacheCategoryNames;->d:Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v2}, Lcn/kuwo/base/cache/CacheCategoryNames;->a()I

    move-result v2

    sget-object v3, Lcn/kuwo/base/cache/CacheCategoryNames;->d:Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v3}, Lcn/kuwo/base/cache/CacheCategoryNames;->b()I

    move-result v3

    const-string v4, "app_config_server"

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v0, "ConfigMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[analysisUpdateResult] save config ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_12
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v8, :cond_9

    :try_start_c
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :cond_9
    :goto_5
    if-eqz v7, :cond_a

    :try_start_d
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    :cond_a
    :goto_6
    if-eqz v8, :cond_b

    :try_start_e
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :cond_b
    :goto_7
    move v0, v6

    goto/16 :goto_0

    :catch_2
    move-exception v1

    move-object v3, v2

    :goto_8
    :try_start_f
    const-string v4, "ConfigMgrImpl"

    invoke-static {v4, v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v3, :cond_c

    :try_start_10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    :cond_c
    :goto_9
    if-eqz v2, :cond_d

    :try_start_11
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    :cond_d
    :goto_a
    if-eqz v3, :cond_0

    :try_start_12
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v2

    :goto_b
    if-eqz v2, :cond_e

    :try_start_13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    :cond_e
    :goto_c
    if-eqz v7, :cond_f

    :try_start_14
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    :cond_f
    :goto_d
    if-eqz v2, :cond_0

    :try_start_15
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :catch_5
    move-exception v4

    goto/16 :goto_1

    :catch_6
    move-exception v3

    goto/16 :goto_2

    :catch_7
    move-exception v3

    goto/16 :goto_3

    :catch_8
    move-exception v3

    goto/16 :goto_4

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    goto :goto_7

    :catch_c
    move-exception v1

    goto :goto_9

    :catch_d
    move-exception v1

    goto :goto_a

    :catch_e
    move-exception v1

    goto :goto_c

    :catch_f
    move-exception v1

    goto :goto_d

    :catchall_1
    move-exception v1

    goto :goto_b

    :catchall_2
    move-exception v1

    move-object v2, v8

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v2, v8

    move v0, v6

    goto :goto_b

    :catchall_4
    move-exception v1

    move-object v7, v2

    move-object v2, v3

    goto :goto_b

    :catch_10
    move-exception v1

    move-object v3, v2

    move-object v2, v7

    goto :goto_8

    :catch_11
    move-exception v1

    move-object v2, v7

    move-object v3, v8

    goto :goto_8

    :catch_12
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move v0, v6

    goto :goto_8
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->h:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/base/config/ConfMgrImpl$2;

    invoke-direct {v2, p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl$2;-><init>(Lcn/kuwo/base/config/ConfMgrImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method


# virtual methods
.method public IHttpNotifyFailed(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    if-ne p1, v0, :cond_0

    const-string v0, "ConfigMgrImpl"

    const-string v1, "[IHttpNotifyFailed] update failed:  %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    :cond_0
    return-void
.end method

.method public IHttpNotifyFinish(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/base/config/ConfMgrImpl$1;

    invoke-direct {v1, p0, p2}, Lcn/kuwo/base/config/ConfMgrImpl$1;-><init>(Lcn/kuwo/base/config/ConfMgrImpl;Lcn/kuwo/base/http/HttpResult;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    :cond_0
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

.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->a:Lcn/kuwo/base/config/basic/FileConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcn/kuwo/base/config/basic/FileConfig;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    :goto_0
    return p3

    :cond_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->a:Lcn/kuwo/base/config/basic/FileConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcn/kuwo/base/config/basic/FileConfig;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    :goto_0
    return-wide p3

    :cond_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3, p4}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@kuwo@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->a:Lcn/kuwo/base/config/basic/FileConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcn/kuwo/base/config/basic/FileConfig;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcn/kuwo/base/config/basic/FileConfig;

    invoke-direct {v0}, Lcn/kuwo/base/config/basic/FileConfig;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->a:Lcn/kuwo/base/config/basic/FileConfig;

    new-instance v0, Lcn/kuwo/base/config/basic/FileConfig;

    invoke-direct {v0}, Lcn/kuwo/base/config/basic/FileConfig;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->b:Lcn/kuwo/base/config/basic/FileConfig;

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->a:Lcn/kuwo/base/config/basic/FileConfig;

    invoke-virtual {p0}, Lcn/kuwo/base/config/ConfMgrImpl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Lcn/kuwo/base/config/basic/FileConfig;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ConfigMgrImpl"

    const-string v1, "[init] load server config failed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "ConfigMgrImpl"

    const-string v1, "[init] server config group num = %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/kuwo/base/config/ConfMgrImpl;->a:Lcn/kuwo/base/config/basic/FileConfig;

    invoke-virtual {v3}, Lcn/kuwo/base/config/basic/FileConfig;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->b:Lcn/kuwo/base/config/basic/FileConfig;

    invoke-virtual {p0}, Lcn/kuwo/base/config/ConfMgrImpl;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Lcn/kuwo/base/config/basic/FileConfig;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ConfigMgrImpl"

    const-string v1, "[init] load default config failed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "ConfigMgrImpl"

    const-string v1, "[init] default config group num = %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/kuwo/base/config/ConfMgrImpl;->b:Lcn/kuwo/base/config/basic/FileConfig;

    invoke-virtual {v3}, Lcn/kuwo/base/config/basic/FileConfig;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcn/kuwo/base/config/basic/FileConfig;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v2}, Lcn/kuwo/base/config/basic/FileConfig;->a(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcn/kuwo/base/config/basic/PrefsUtils;->b(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 3

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3, p4}, Lcn/kuwo/base/config/basic/PrefsUtils;->b(Landroid/content/Context;Ljava/lang/String;J)V

    if-eqz p5, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcn/kuwo/base/config/basic/PrefsUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->a:Lcn/kuwo/base/config/basic/FileConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcn/kuwo/base/config/basic/FileConfig;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcn/kuwo/base/config/basic/PrefsUtils;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/kuwo/base/config/ConfMgrImpl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ConfigMgrImpl"

    const-string v1, "[updateServerConfig] not need update server config"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcn/kuwo/base/util/UrlManagerUtils;->getUpdateServerConfigRequest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigMgrImpl"

    const-string v2, "[updateServerConfig] request url: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v1}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    iput-object v1, p0, Lcn/kuwo/base/config/ConfMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    const-string v1, "ConfigMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/base/config/ConfMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v1, v0, p0}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ConfigMgrImpl"

    const-string v1, "[updateServerConfig] call asyncGet failed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()Z
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "CONFIG_CACHE"

    const-string v2, "app_config_server"

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/cache/CacheMgr;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "CONFIG_CACHE"

    const-string v2, "app_config_server"

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/cache/CacheMgr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default.config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
