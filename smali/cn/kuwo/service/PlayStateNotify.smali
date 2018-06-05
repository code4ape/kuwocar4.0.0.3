.class public Lcn/kuwo/service/PlayStateNotify;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:Lcn/kuwo/service/PlayDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcn/kuwo/service/PlayStateNotify;->a:I

    const/4 v0, 0x0

    sput v0, Lcn/kuwo/service/PlayStateNotify;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    const-string v0, "PlayStateNotify"

    const-string v1, "new PlayStateNotify"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/service/PlayStateNotify;)Lcn/kuwo/service/PlayDelegate;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcn/kuwo/service/PlayStateNotify;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    sget v0, Lcn/kuwo/service/PlayStateNotify;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/kuwo/service/PlayStateNotify;->a:I

    sput v0, Lcn/kuwo/service/PlayStateNotify;->b:I

    const-string v0, "PlayStateNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentNotifyVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/kuwo/service/PlayStateNotify;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(III)V
    .locals 7

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyPlayProgress"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyPlayProgress fail delegate==null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v6

    new-instance v0, Lcn/kuwo/service/PlayStateNotify$8;

    sget v2, Lcn/kuwo/service/PlayStateNotify;->b:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/service/PlayStateNotify$8;-><init>(Lcn/kuwo/service/PlayStateNotify;IIII)V

    invoke-virtual {v6, v0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected a(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PlayStateNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyError error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyError fail delegate==null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/PlayStateNotify$5;

    sget v2, Lcn/kuwo/service/PlayStateNotify;->b:I

    invoke-direct {v1, p0, v2, p1}, Lcn/kuwo/service/PlayStateNotify$5;-><init>(Lcn/kuwo/service/PlayStateNotify;ILcn/kuwo/service/PlayDelegate$ErrorCode;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method public a(Lcn/kuwo/service/PlayDelegate;)V
    .locals 3

    const-string v0, "PlayStateNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set delegate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    return-void
.end method

.method protected a(Lcn/kuwo/service/PlayProxy$Status;)V
    .locals 3

    const-string v0, "PlayStateNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPause status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyPause fail delegate==null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/PlayStateNotify$2;

    sget v2, Lcn/kuwo/service/PlayStateNotify;->b:I

    invoke-direct {v1, p0, v2, p1}, Lcn/kuwo/service/PlayStateNotify$2;-><init>(Lcn/kuwo/service/PlayStateNotify;ILcn/kuwo/service/PlayProxy$Status;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected a(Lcn/kuwo/service/PlayProxy$Status;J)V
    .locals 8

    const-string v0, "PlayStateNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStart status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " realStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v6

    new-instance v0, Lcn/kuwo/service/PlayStateNotify$1;

    sget v2, Lcn/kuwo/service/PlayStateNotify;->b:I

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/service/PlayStateNotify$1;-><init>(Lcn/kuwo/service/PlayStateNotify;ILcn/kuwo/service/PlayProxy$Status;J)V

    invoke-virtual {v6, v0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void

    :cond_0
    move-wide v4, p2

    goto :goto_0
.end method

.method protected a(Lcn/kuwo/service/PlayProxy$Status;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyDownloadFinished"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/PlayStateNotify$9;

    sget v2, Lcn/kuwo/service/PlayStateNotify;->b:I

    invoke-direct {v1, p0, v2, p1, p2}, Lcn/kuwo/service/PlayStateNotify$9;-><init>(Lcn/kuwo/service/PlayStateNotify;ILcn/kuwo/service/PlayProxy$Status;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "PlayStateNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStop end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyStop fail delegate==null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/PlayStateNotify$4;

    invoke-direct {v1, p0, p2, p1}, Lcn/kuwo/service/PlayStateNotify$4;-><init>(Lcn/kuwo/service/PlayStateNotify;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method public a([D[D)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyFFTDataReceive fail delegate==null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/PlayStateNotify$10;

    sget v2, Lcn/kuwo/service/PlayStateNotify;->b:I

    invoke-direct {v1, p0, v2, p1, p2}, Lcn/kuwo/service/PlayStateNotify$10;-><init>(Lcn/kuwo/service/PlayStateNotify;I[D[D)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyBufferingFinish"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyBufferingFinish fail delegate==null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/PlayStateNotify$7;

    sget v2, Lcn/kuwo/service/PlayStateNotify;->b:I

    invoke-direct {v1, p0, v2}, Lcn/kuwo/service/PlayStateNotify$7;-><init>(Lcn/kuwo/service/PlayStateNotify;I)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected b(Lcn/kuwo/service/PlayProxy$Status;)V
    .locals 3

    const-string v0, "PlayStateNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyResume status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyResume fail delegate==null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/PlayStateNotify$3;

    sget v2, Lcn/kuwo/service/PlayStateNotify;->b:I

    invoke-direct {v1, p0, v2, p1}, Lcn/kuwo/service/PlayStateNotify$3;-><init>(Lcn/kuwo/service/PlayStateNotify;ILcn/kuwo/service/PlayProxy$Status;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected c(Lcn/kuwo/service/PlayProxy$Status;)V
    .locals 3

    const-string v0, "PlayStateNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyBuffering status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify;->c:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyBuffering fail delegate==null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/PlayStateNotify$6;

    sget v2, Lcn/kuwo/service/PlayStateNotify;->b:I

    invoke-direct {v1, p0, v2, p1}, Lcn/kuwo/service/PlayStateNotify$6;-><init>(Lcn/kuwo/service/PlayStateNotify;ILcn/kuwo/service/PlayProxy$Status;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method
