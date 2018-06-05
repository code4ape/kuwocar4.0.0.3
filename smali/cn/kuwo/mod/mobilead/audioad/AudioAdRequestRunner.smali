.class public Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->c:I

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;)Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    return-object v0
.end method

.method private a(Lcn/kuwo/base/http/HttpResult;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcn/kuwo/base/http/HttpResult;->c:[B

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/DownloadProxy$DownGroup;->a:Lcn/kuwo/service/DownloadProxy$DownGroup;

    sget-object v4, Lcn/kuwo/service/DownloadProxy$DownType;->e:Lcn/kuwo/service/DownloadProxy$DownType;

    new-instance v5, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$1;

    invoke-direct {v5, p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$1;-><init>(Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;)V

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/service/DownloadProxy$DownGroup;Ljava/lang/String;Ljava/lang/String;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v0}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/http/HttpSession;->a(Z)V

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/http/HttpSession;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-virtual {v0, p2}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->f(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-virtual {v0, p2}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-virtual {v0, p2}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->a(Z)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "audio_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "big_img_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "big_jump_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "big_jump_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "big_jump_title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "small_img_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "small_jump_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->j(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "small_jump_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "small_jump_title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "count_id_bimg"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    const-string v0, "count_id_simg"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->o(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcn/kuwo/base/util/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$2;

    invoke-direct {v1, p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$2;-><init>(Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method static synthetic b(Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    iget v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->c:I

    if-lez v0, :cond_0

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->c:I

    invoke-virtual {v0, v1}, Lcn/kuwo/service/DownloadProxy;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a:Z

    invoke-direct {p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->c()V

    return-void
.end method

.method public a(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;I)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    iput p2, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b:Ljava/lang/String;

    return-void
.end method

.method public call()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b:Ljava/lang/String;

    iget v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->e:I

    invoke-static {v0, v1}, Lcn/kuwo/base/util/UrlManagerUtils;->getAudioAdInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAdRequestRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v1}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    invoke-virtual {v1, v4}, Lcn/kuwo/base/http/HttpSession;->a(Z)V

    invoke-virtual {v1, v0}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a(Lcn/kuwo/base/http/HttpResult;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAdRequestRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    const-string v2, "success"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-virtual {v1}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "audio_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-virtual {v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-virtual {v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-virtual {v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-virtual {v0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->d:Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    invoke-virtual {v0, v4}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->a(Z)V

    invoke-direct {p0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b()V

    goto/16 :goto_0
.end method
