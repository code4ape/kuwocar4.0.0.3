.class public Lcn/kuwo/base/util/MusicQualityUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/http/IHttpNotify;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicQualityUtils"

.field private static final TIME_OUT:I = 0x2710


# instance fields
.field private curMusic:Lcn/kuwo/base/bean/Music;

.field private httpSession:Lcn/kuwo/base/http/HttpSession;

.field private isSend:Z

.field private progress:Landroid/app/ProgressDialog;

.field private withoutHint:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/kuwo/base/util/MusicQualityUtils;->progress:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcn/kuwo/base/util/MusicQualityUtils;->httpSession:Lcn/kuwo/base/http/HttpSession;

    iput-boolean v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->isSend:Z

    iput-boolean v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->withoutHint:Z

    return-void
.end method


# virtual methods
.method public IHttpNotifyFailed(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 2

    const-string v0, "MusicQualityUtils"

    const-string v1, "http async get failed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->isSend:Z

    iget-boolean v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->withoutHint:Z

    if-nez v0, :cond_1

    const-string v0, "\u83b7\u53d6\u97f3\u8d28\u8d44\u6e90\u5931\u8d25"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public IHttpNotifyFinish(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->isSend:Z

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/MusicQualityUtils;->curMusic:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/Music;->b(Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcn/kuwo/base/util/MusicQualityUtils;->withoutHint:Z

    if-nez v1, :cond_1

    if-lez v0, :cond_2

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/MusicQualityUtils;->curMusic:Lcn/kuwo/base/bean/Music;

    invoke-static {v0, v1}, Lcn/kuwo/ui/dialog/DialogUtils;->showDownloadDialog(Landroid/content/Context;Lcn/kuwo/base/bean/Music;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "\u83b7\u53d6\u97f3\u8d28\u8d44\u6e90\u5931\u8d25"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->withoutHint:Z

    if-nez v0, :cond_1

    const-string v0, "\u83b7\u53d6\u97f3\u8d28\u8d44\u6e90\u5931\u8d25"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public IHttpNotifyProgress(Lcn/kuwo/base/http/HttpSession;II[BI)V
    .locals 0

    return-void
.end method

.method public IHttpNotifyStart(Lcn/kuwo/base/http/HttpSession;ILcn/kuwo/base/http/HttpResult;)V
    .locals 3

    iget-boolean v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->withoutHint:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->progress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->progress:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u3002\u3002\u3002"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public fetchMusicQuality(Lcn/kuwo/base/bean/Music;)V
    .locals 4

    iget-boolean v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->isSend:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->withoutHint:Z

    if-nez v0, :cond_0

    const-string v0, "\u8be5\u6b4c\u66f2\u4e0d\u80fd\u4e0b\u8f7d"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcn/kuwo/base/util/MusicQualityUtils;->curMusic:Lcn/kuwo/base/bean/Music;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "type=audio_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&rid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    sget-object v2, Lcn/kuwo/base/crypt/KuwoDES;->a:[B

    sget v3, Lcn/kuwo/base/crypt/KuwoDES;->b:I

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/crypt/KuwoDES;->a([BI[BI)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    invoke-static {v0, v2}, Lcn/kuwo/base/crypt/Base64Coder;->a([BI)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/kuwo/base/util/UrlManagerUtils;->Host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/kuwo/base/util/MusicQualityUtils;->isSend:Z

    new-instance v1, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v1}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    iput-object v1, p0, Lcn/kuwo/base/util/MusicQualityUtils;->httpSession:Lcn/kuwo/base/http/HttpSession;

    iget-object v1, p0, Lcn/kuwo/base/util/MusicQualityUtils;->httpSession:Lcn/kuwo/base/http/HttpSession;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/base/http/HttpSession;->a(J)V

    iget-object v1, p0, Lcn/kuwo/base/util/MusicQualityUtils;->httpSession:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v1, v0, p0}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    goto :goto_0
.end method

.method public fetchMusicQualityWithoutHint(Lcn/kuwo/base/bean/Music;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/util/MusicQualityUtils;->withoutHint:Z

    invoke-virtual {p0, p1}, Lcn/kuwo/base/util/MusicQualityUtils;->fetchMusicQuality(Lcn/kuwo/base/bean/Music;)V

    return-void
.end method
