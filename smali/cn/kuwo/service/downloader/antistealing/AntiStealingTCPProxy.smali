.class public final Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/Socket;

.field private c:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;

.field private d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;


# direct methods
.method public constructor <init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    iput-object p2, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->c:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;

    return-void
.end method

.method static synthetic a(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;)Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->c:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;

    invoke-direct {v2, p0, p1, p2}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;-><init>(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$1;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$1;-><init>(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method static synthetic b(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->b:Ljava/net/Socket;

    :cond_0
    iput-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->c:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    invoke-static {v0, p0}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v3, 0x1

    const-string v0, "appconfig"

    const-string v1, "kwudpdnsserver"

    const-string v2, "60.28.201.13"

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/Socket;

    const/16 v2, 0x50

    invoke-direct {v1, v0, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->b:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "AntiStealingTCPProxy"

    const-string v1, "AntiStealingTCPProxy run"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->b:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    const v3, 0x186a0

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :try_start_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v3, Lcn/kuwo/base/util/DeviceUtils;->INSTALL_SOURCE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "antistealing"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v3, "nodata"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v3, "AntiStealingTCPProxy"

    invoke-static {v3, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x4

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->throwable2String(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_0
    return-void

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->throwable2String(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(ILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_0
    :goto_2
    const-string v1, "AntiStealingTCPProxy"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x2

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->throwable2String(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(ILjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_3
    const-string v1, "AntiStealingTCPProxy"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x3

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->throwable2String(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_9
    const-string v4, "ok"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v3, "not ok"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :goto_4
    throw v0

    :cond_2
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v3, "no key1"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x2

    if-eq v0, v4, :cond_4

    new-instance v3, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inputKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " outputKey = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v3, "no key2"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v3

    if-gtz v0, :cond_6

    new-instance v0, Ljava/lang/Exception;

    const-string v3, "retLen<=0"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-array v0, v0, [C

    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    if-gtz v3, :cond_7

    new-instance v0, Ljava/lang/Exception;

    const-string v3, "no result"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    const-string v1, "result empty"

    invoke-direct {p0, v0, v1}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v3}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto/16 :goto_4

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v1

    goto/16 :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_1
.end method
