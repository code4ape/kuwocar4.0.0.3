.class public Lcn/kuwo/mod/list/CloudMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/http/IHttpNotify;
.implements Lcn/kuwo/base/util/KwTimer$Listener;
.implements Lcn/kuwo/mod/list/ICloudMgr;


# static fields
.field private static final c:Lcn/kuwo/mod/list/CloudMgrImpl;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I

.field private d:Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;

.field private e:Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;

.field private f:Lcn/kuwo/base/util/KwTimer;

.field private g:Lcn/kuwo/base/http/HttpSession;

.field private h:Lcn/kuwo/base/http/HttpSession;

.field private i:Lcn/kuwo/base/http/HttpSession;

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/mod/list/CloudMgrImpl;->c:Lcn/kuwo/mod/list/CloudMgrImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://nplserver.kuwo.cn/pl.svc"

    iput-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->a:Ljava/lang/String;

    const v0, 0x493e0

    iput v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->b:I

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/list/CloudMgrImpl;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->l:I

    return p1
.end method

.method static synthetic a(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/base/http/HttpSession;)Lcn/kuwo/base/http/HttpSession;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    return-object p1
.end method

.method static synthetic a(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/util/KwTimer;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->f:Lcn/kuwo/base/util/KwTimer;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/base/util/KwTimer;)Lcn/kuwo/base/util/KwTimer;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->f:Lcn/kuwo/base/util/KwTimer;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processQuery(start):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/kuwo/mod/list/KeyValue;

    invoke-direct {v1, p1}, Lcn/kuwo/mod/list/KeyValue;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/list/KeyValue;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const-string v1, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->j()V

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "merger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processQuery(ok):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "exist"

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/list/KeyValue;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->j()V

    goto :goto_0

    :cond_5
    const-string v0, "enrolled"

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/list/KeyValue;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_6
    invoke-direct {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->j()V

    goto :goto_0
.end method

.method private a(Lcn/kuwo/base/bean/ListType;Ljava/lang/StringBuilder;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->l()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {p2, v0}, Lcn/kuwo/mod/list/CloudHelp;->c(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-static {p2, v0}, Lcn/kuwo/mod/list/CloudHelp;->e(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcn/kuwo/mod/list/CloudMgrImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->j:Z

    return p1
.end method

.method static synthetic b(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    return-object v0
.end method

.method static synthetic b(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/base/http/HttpSession;)Lcn/kuwo/base/http/HttpSession;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->h:Lcn/kuwo/base/http/HttpSession;

    return-object p1
.end method

.method static synthetic c(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->h:Lcn/kuwo/base/http/HttpSession;

    return-object v0
.end method

.method static synthetic c(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/base/http/HttpSession;)Lcn/kuwo/base/http/HttpSession;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    return-object p1
.end method

.method public static c()Lcn/kuwo/mod/list/CloudMgrImpl;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/list/CloudMgrImpl;->c:Lcn/kuwo/mod/list/CloudMgrImpl;

    return-object v0
.end method

.method static synthetic d(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    return-object v0
.end method

.method static synthetic e(Lcn/kuwo/mod/list/CloudMgrImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcn/kuwo/mod/list/CloudMgrImpl;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->f:Lcn/kuwo/base/util/KwTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->f:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    :cond_0
    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    invoke-direct {v0, p0}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->f:Lcn/kuwo/base/util/KwTimer;

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->f:Lcn/kuwo/base/util/KwTimer;

    const v1, 0x493e0

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/KwTimer;->start(I)V

    return-void
.end method

.method private i()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?op=adddev&uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&devkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    if-eqz v1, :cond_0

    const-string v1, "CloudMgrImpl"

    const-string v2, "addDevOk:null != httpAddDev"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v1}, Lcn/kuwo/base/http/HttpSession;->a()Z

    :cond_0
    new-instance v1, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v1}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    iput-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v1, v4}, Lcn/kuwo/base/http/HttpSession;->a(Z)V

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "merger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "list"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const-string v1, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDevOk(ok):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "CloudMgrImpl"

    const-string v1, "merge(start)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/mod/list/ListSet;

    invoke-direct {v0}, Lcn/kuwo/mod/list/ListSet;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v6}, Lcn/kuwo/mod/list/ListSet;->a(JZ)Z

    sget-object v1, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/ListSet;->b(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "CloudMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "merge(mid): defaultList size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Lcn/kuwo/mod/list/MusicListInner;->a(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/lang/String;Ljava/util/List;)I

    :cond_0
    sget-object v1, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/ListSet;->b(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "CloudMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "merge(mid): favoriteList size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Lcn/kuwo/mod/list/MusicListInner;->a(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/lang/String;Ljava/util/List;)I

    :cond_1
    const-string v1, "CloudMgrImpl"

    const-string v2, "merge favoriteList---------------->"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/ListSet;->d(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v4

    invoke-virtual {v0, v6, v4}, Lcn/kuwo/base/bean/MusicList;->a(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/lang/String;Ljava/util/List;)I

    :cond_3
    const-string v1, "CloudMgrImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "merge(mid):list name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", list size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->i()V

    const-string v0, "CloudMgrImpl"

    const-string v1, "merge(ok)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public IHttpNotifyFailed(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IHttpNotifyFailed(start):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->h:Lcn/kuwo/base/http/HttpSession;

    if-ne p1, v0, :cond_0

    const-string v0, "CloudMgrImpl"

    const-string v1, "IHttpNotifyFailed(mid):httpQuery"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->j()V

    iput-object v5, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->h:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->g()Z

    invoke-direct {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->h()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    if-ne p1, v0, :cond_3

    const-string v0, "CloudMgrImpl"

    const-string v1, "IHttpNotifyFailed(mid):httpSync"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->k:I

    iget v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->k:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;)V

    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->r:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v5, v1}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->k:I

    :cond_1
    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->d(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Lcn/kuwo/base/bean/ListType;)Z

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->p:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    check-cast v1, Lcn/kuwo/mod/list/MusicListInner;

    move-object v2, v0

    check-cast v2, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v2}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->k()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->p:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/CloudMgrImpl$6;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/list/CloudMgrImpl$6;-><init>(Lcn/kuwo/mod/list/CloudMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    iput-object v5, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    if-ne p1, v0, :cond_4

    iput-object v5, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    const-string v0, "CloudMgrImpl"

    const-string v1, "IHttpNotifyFailed(mid):httpAddDev"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public IHttpNotifyFinish(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "CloudMgrImpl"

    const-string v1, "IHttpNotifyFinish(start)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->h:Lcn/kuwo/base/http/HttpSession;

    if-ne p1, v0, :cond_1

    const-string v0, "CloudMgrImpl"

    const-string v1, "IHttpNotifyFinish(mid):httpQuery"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Ljava/lang/String;)V

    iput-object v4, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->h:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->g()Z

    invoke-direct {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->k:I

    const-string v0, "CloudMgrImpl"

    const-string v1, "IHttpNotifyFinish(mid):httpSync"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcn/kuwo/base/http/HttpResult;->c:[B

    sget-object v1, Lcn/kuwo/base/util/KwThreadPool$JobType;->NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v2, Lcn/kuwo/mod/list/CloudMgrImpl$5;

    invoke-direct {v2, p0, v0}, Lcn/kuwo/mod/list/CloudMgrImpl$5;-><init>(Lcn/kuwo/mod/list/CloudMgrImpl;[B)V

    invoke-static {v1, v2}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHttpNotifyFinish(mid):httpAddDev "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    goto :goto_0
.end method

.method public IHttpNotifyProgress(Lcn/kuwo/base/http/HttpSession;II[BI)V
    .locals 0

    return-void
.end method

.method public IHttpNotifyStart(Lcn/kuwo/base/http/HttpSession;ILcn/kuwo/base/http/HttpResult;)V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 3

    const-string v0, "CloudMgrImpl"

    const-string v1, "init(start)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    new-instance v0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;-><init>(Lcn/kuwo/mod/list/CloudMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->d:Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;

    new-instance v0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;-><init>(Lcn/kuwo/mod/list/CloudMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->e:Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;

    const-string v0, "list"

    const-string v1, "cloudserver"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->a:Ljava/lang/String;

    :cond_0
    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(ok):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/kuwo/mod/list/MusicListInner;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    goto :goto_0
.end method

.method a(Lcn/kuwo/mod/list/MusicListInner;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-static {p2}, Lcn/kuwo/mod/list/ListMgrImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    if-eqz v0, :cond_3

    const/16 v3, 0x14

    if-ge v1, v3, :cond_3

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v3

    if-nez v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "[1]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "[1]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v3

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v2}, Lcn/kuwo/mod/list/MusicListInner;->c(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/list/ListMgrImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto/16 :goto_1

    :cond_5
    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListName(error):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method a(Ljava/util/List;Lcn/kuwo/mod/list/MusicListInner;)V
    .locals 8

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {p2, v2}, Lcn/kuwo/mod/list/MusicListInner;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v6

    invoke-interface {v6}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v6

    if-eq v6, v5, :cond_2

    invoke-virtual {v5}, Lcn/kuwo/base/bean/Music;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v5, "CloudMgrImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replaceMusic:\u672c\u5730\u6b4c\u66f2\u548c\u6b63\u5728\u64ad\u653e\u7684\u6b4c\u66f2\u4e0d\u80fd\u88ab\u66ff\u6362\u3002\u6bd4\u8f83\u4e0b\u4e00\u9996\u3002"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v2, v0}, Lcn/kuwo/mod/list/MusicListInner;->set(ILcn/kuwo/base/bean/Music;)Lcn/kuwo/base/bean/Music;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v0}, Lcn/kuwo/mod/list/MusicListInner;->add(Lcn/kuwo/base/bean/Music;)Z

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lt v0, v2, :cond_7

    if-ltz v0, :cond_7

    invoke-virtual {p2, v0}, Lcn/kuwo/mod/list/MusicListInner;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v5

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v6

    invoke-interface {v6}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v6

    if-eq v6, v5, :cond_6

    invoke-virtual {v5}, Lcn/kuwo/base/bean/Music;->a()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p2, v0}, Lcn/kuwo/mod/list/MusicListInner;->d(I)Lcn/kuwo/base/bean/Music;

    invoke-interface {v3, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceMusic(ok):delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/CloudMgrImpl$2;

    invoke-direct {v2, p0, p2, v3, v4}, Lcn/kuwo/mod/list/CloudMgrImpl$2;-><init>(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/mod/list/MusicListInner;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method a(Lcn/kuwo/mod/list/CloudListData;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "CloudMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAdd(start):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v3, "FAIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-eq v2, v3, :cond_1

    :cond_0
    const-string v1, "CloudMgrImpl"

    const-string v2, "processAdd(error):\u4e3a\u4ec0\u4e48\u5931\u8d25\uff0c\u5ba2\u6237\u7aef\u8ba4\u4e3a\u7edd\u4e0d\u53ef\u80fd\u5931\u8d25"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget v2, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lcn/kuwo/mod/list/CloudListData;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v1, "CloudMgrImpl"

    const-string v2, "processAdd(error):\u8fd9\u4e9b\u5fc5\u987b\u6761\u4ef6\uff0c\u5982\u679c\u7f3a\u4e00\u4e2a\uff0c\u8bf4\u660e\u670d\u52a1\u5668\u5904\u7406\u6709\u95ee\u9898\u3002"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    iget-wide v4, p1, Lcn/kuwo/mod/list/CloudListData;->c:J

    invoke-static {v2, v4, v5}, Lcn/kuwo/mod/list/CloudHelp;->a(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v2

    if-eqz v2, :cond_6

    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    invoke-virtual {v2, v3}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    invoke-virtual {v2, v3}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    invoke-virtual {v2}, Lcn/kuwo/mod/list/MusicListInner;->l()I

    move-result v3

    if-gt v3, v1, :cond_5

    invoke-virtual {v2, v0}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v3, :cond_4

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v0, "CloudMgrImpl"

    const-string v2, "processAdd(ok)"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "CloudMgrImpl"

    const-string v2, "processAdd(mid):\u540c\u6b65\u8fc7\u7a0b\u4e2d\u505a\u8fc7\u4fee\u6539\u3002\u5ffd\u7565\uff0c\u7b49\u4e0b\u6b21\u540c\u6b65"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v2, "CloudMgrImpl"

    const-string v3, "processAdd:\u670d\u52a1\u7aef\u8fd4\u56de\u7684\u8fc7\u7a0b\u4e2d\u88ab\u7528\u6237\u5220\u9664\u4e86\u3002\u4e0b\u6b21\u63d0\u4ea4\u5220\u9664\u64cd\u4f5c"

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    iget-wide v4, p1, Lcn/kuwo/mod/list/CloudListData;->c:J

    invoke-static {v2, v4, v5}, Lcn/kuwo/mod/list/CloudHelp;->a(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v0, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    invoke-virtual {v2, v0}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    iget v0, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    invoke-virtual {v2, v0}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    goto :goto_1

    :cond_7
    const-string v1, "CloudMgrImpl"

    const-string v2, "processAdd(error):\u6ca1\u6709\u627e\u5230\u5bf9\u5e94\u7684\u5217\u8868"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method a([B)Z
    .locals 11

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "GBK"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v3, v1

    move v0, v1

    :cond_0
    :goto_0
    if-nez v3, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result v8

    if-eqz v8, :cond_4

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    const-string v1, "CloudMgrImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse music time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    new-instance v2, Lcn/kuwo/mod/list/CloudMgrImpl$4;

    invoke-direct {v2, p0, v4}, Lcn/kuwo/mod/list/CloudMgrImpl$4;-><init>(Lcn/kuwo/mod/list/CloudMgrImpl;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_3
    :goto_5
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move v0, v1

    goto :goto_5

    :cond_4
    :try_start_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    new-instance v8, Lcn/kuwo/mod/list/KeyValue;

    invoke-direct {v8, v2}, Lcn/kuwo/mod/list/KeyValue;-><init>(Ljava/util/List;)V

    const-string v2, "result"

    invoke-virtual {v8, v2}, Lcn/kuwo/mod/list/KeyValue;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "result"

    invoke-virtual {v8, v0}, Lcn/kuwo/mod/list/KeyValue;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_6
    const-string v2, "waittime"

    invoke-virtual {v8, v2}, Lcn/kuwo/mod/list/KeyValue;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :try_start_4
    const-string v2, "waittime"

    invoke-virtual {v8, v2}, Lcn/kuwo/mod/list/KeyValue;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    const v9, 0x493e0

    div-int/2addr v2, v9

    iput v2, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->l:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    :goto_6
    const-string v2, "ok"

    const-string v9, "result"

    invoke-virtual {v8, v9}, Lcn/kuwo/mod/list/KeyValue;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USER_INVALID"

    const-string v9, "reason"

    invoke-virtual {v8, v9}, Lcn/kuwo/mod/list/KeyValue;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v2

    new-instance v8, Lcn/kuwo/mod/list/CloudMgrImpl$3;

    invoke-direct {v8, p0}, Lcn/kuwo/mod/list/CloudMgrImpl$3;-><init>(Lcn/kuwo/mod/list/CloudMgrImpl;)V

    invoke-virtual {v2, v8}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_6

    :cond_8
    new-instance v8, Lcn/kuwo/mod/list/CloudListData;

    invoke-direct {v8}, Lcn/kuwo/mod/list/CloudListData;-><init>()V

    move v2, v1

    :goto_7
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-lez v2, :cond_1

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v9}, Lcn/kuwo/mod/list/CloudListData;->a(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception v1

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto/16 :goto_4

    :catch_6
    move-exception v3

    goto/16 :goto_2
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->d:Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->d:Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a()V

    iput-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->d:Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->e:Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->e:Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a()V

    iput-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->e:Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->h:Lcn/kuwo/base/http/HttpSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->h:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    iput-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->h:Lcn/kuwo/base/http/HttpSession;

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    iput-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    iput-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->i:Lcn/kuwo/base/http/HttpSession;

    :cond_4
    iput-boolean v2, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->j:Z

    iput v2, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->l:I

    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release(ok):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method b(Lcn/kuwo/mod/list/CloudListData;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "CloudMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCheck(start):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v3, "FAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "CloudMgrImpl"

    const-string v1, "processCheck(error):\u4e3a\u4ec0\u4e48\u5931\u8d25\uff0c\u5ba2\u6237\u7aef\u8ba4\u4e3a\u7edd\u4e0d\u53ef\u80fd\u5931\u8d25"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v3, "OK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    if-eq v0, v3, :cond_3

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    if-eq v0, v3, :cond_3

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v3, :cond_5

    :cond_3
    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v3}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    if-nez v0, :cond_4

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v4, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    if-ne v3, v4, :cond_4

    const-string v0, "CloudMgrImpl"

    const-string v3, "processCheck(mid):\u5982\u679c\u672c\u5730\u6ca1\u6709pc\u9ed8\u8ba4\u5217\u8868\uff0c\u800c\u670d\u52a1\u5668\u8fd4\u56depc\u9ed8\u8ba4\u5217\u8868\uff0c\u5219\u521b\u5efa\u4ed6"

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    iget-object v4, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v4}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    :cond_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->l()I

    move-result v3

    if-le v3, v1, :cond_8

    const-string v0, "CloudMgrImpl"

    const-string v2, "processCheck(mid):\u540c\u6b65\u7684\u8fc7\u7a0b\u4e2d\u53c8\u4fee\u6539\u4e86"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v3, :cond_7

    sget-object v0, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    int-to-long v4, v3

    invoke-static {v0, v4, v5}, Lcn/kuwo/mod/list/CloudHelp;->b(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->l()I

    move-result v3

    if-le v3, v1, :cond_8

    const-string v2, "CloudMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCheck(mid):\u540c\u6b65\u7684\u8fc7\u7a0b\u4e2d\u53c8\u4fee\u6539\u4e86 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const-string v0, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCheck(mid):\u63d0\u4ea4\u7684\u8fc7\u7a0b\u4e2d\u53ef\u80fd\u88ab\u5220\u9664 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCheck(error):\u9519\u8bef\u7684\u7c7b\u578b "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v4, "OK_MOD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v4, "OK_SIGDIFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    invoke-virtual {v0, v3}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    iget v2, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v2, v3, :cond_a

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;Ljava/lang/String;)V

    :cond_a
    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->h:Ljava/util/List;

    invoke-virtual {p0, v2, v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Ljava/util/List;Lcn/kuwo/mod/list/MusicListInner;)V

    :cond_b
    :goto_1
    const-string v0, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCheck(ok):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_c
    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v3, "OK_DEL"

    invoke-static {v0, v3}, Lcn/kuwo/base/util/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v3, :cond_d

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Ljava/lang/String;)Z

    goto :goto_1

    :cond_d
    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCheck(error):OK_DEL type error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0
.end method

.method c(Lcn/kuwo/mod/list/CloudListData;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertListFromResponse(start):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/mod/list/MusicListInner;

    sget-object v1, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v2

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/kuwo/mod/list/ListMgrImpl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/list/MusicListInner;-><init>(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)V

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->a(Ljava/util/List;)Z

    :cond_2
    iget v1, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    iget v1, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->c:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->b:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;->a:Lcn/kuwo/mod/list/ICloudMgr$CloudStatus;

    goto :goto_0
.end method

.method d(Lcn/kuwo/mod/list/CloudListData;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "CloudMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processUpdate(start):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v3, "FAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v3, "FAIL_SONG_OVERFLOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CloudMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processUpdate(mid):FAIL_SONG_OVERFLOW "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    int-to-long v4, v3

    invoke-static {v0, v4, v5}, Lcn/kuwo/mod/list/CloudHelp;->b(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_1
    sget-object v0, Lcn/kuwo/base/bean/ListType;->p:Lcn/kuwo/base/bean/ListType;

    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    int-to-long v4, v3

    invoke-static {v0, v4, v5}, Lcn/kuwo/mod/list/CloudHelp;->b(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    int-to-long v4, v3

    invoke-static {v0, v4, v5}, Lcn/kuwo/mod/list/CloudHelp;->b(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    iget v1, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    const-string v0, "CloudMgrImpl"

    const-string v1, "processUpdate(mid):\u540c\u6b65\u7684\u8fc7\u7a0b\u4e2d\u53ef\u80fd\u88ab\u5220\u9664\u4e86"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "CloudMgrImpl"

    const-string v2, "processUpdate(error):\u4e25\u91cd\u9519\u8bef"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_4
    const-string v0, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processUpdate(error):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v4, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    if-eq v3, v4, :cond_6

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v4, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    if-eq v3, v4, :cond_6

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v4, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    if-ne v3, v4, :cond_8

    :cond_6
    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v3}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    if-nez v0, :cond_7

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v4, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    if-ne v3, v4, :cond_7

    const-string v0, "CloudMgrImpl"

    const-string v3, "processUpdate(error): ListType.LIST_PC_DEFAULT nonexistend"

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    iget-object v4, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v4}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    :cond_7
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->l()I

    move-result v3

    if-le v3, v2, :cond_c

    const-string v0, "CloudMgrImpl"

    const-string v2, "processUpdate(mid): \u540c\u6b65\u8fc7\u7a0b\u4e2d\u4fee\u6539,\u5148\u4e0d\u5904\u7406\uff0c\u4e0b\u6b21\u540c\u6b65\u4e00\u5e76\u5904\u7406 "

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_8
    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v4, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v3, v4, :cond_f

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    int-to-long v4, v3

    invoke-static {v0, v4, v5}, Lcn/kuwo/mod/list/CloudHelp;->b(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    iget-wide v4, p1, Lcn/kuwo/mod/list/CloudListData;->c:J

    invoke-static {v0, v4, v5}, Lcn/kuwo/mod/list/CloudHelp;->a(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->l()I

    move-result v3

    if-le v3, v2, :cond_c

    const-string v0, "CloudMgrImpl"

    const-string v2, "processUpdate(mid): \u540c\u6b65\u8fc7\u7a0b\u4e2d\u4fee\u6539,\u5148\u4e0d\u5904\u7406\uff0c\u4e0b\u6b21\u540c\u6b65\u4e00\u5e76\u5904\u7406 "

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    int-to-long v4, v3

    invoke-static {v0, v4, v5}, Lcn/kuwo/mod/list/CloudHelp;->b(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "CloudMgrImpl"

    const-string v3, "processUpdate(mid): \u63d0\u4ea4\u7684\u8fc7\u7a0b\u4e2d\u88ab\u5220\u9664\u3002\u6700\u7ec8\u76ee\u7684\u8fd8\u662f\u8981\u5220\u9664\u3002"

    invoke-static {v1, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    move v0, v2

    goto/16 :goto_1

    :cond_b
    const-string v3, "CloudMgrImpl"

    const-string v4, "processUpdate(error): list nonexistend"

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_2
    if-eqz v0, :cond_10

    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    invoke-virtual {v0, v3}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v1, v3, :cond_d

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/MusicListInner;Ljava/lang/String;)V

    :cond_d
    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v3, "OK_MERGEED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->h:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Ljava/util/List;Lcn/kuwo/mod/list/MusicListInner;)V

    :cond_e
    :goto_3
    move v0, v2

    goto/16 :goto_1

    :cond_f
    const-string v3, "CloudMgrImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processUpdate(error): error type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v5}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processUpdate(error):\u4e0d\u5e94\u8be5\u627e\u4e0d\u5230\u5bf9\u5e94\u7684\u5217\u8868 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/CloudMgrImpl;->c(Lcn/kuwo/mod/list/CloudListData;)V

    goto :goto_3
.end method

.method public e()Z
    .locals 3

    sget-boolean v0, Lcn/kuwo/kwmusiccar/App;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->d(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->b(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method e(Lcn/kuwo/mod/list/CloudListData;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processDelete(start):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v2, "FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v2, "CloudMgrImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processDelete(error):"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    if-eqz v0, :cond_3

    iget v0, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-eq v0, v2, :cond_4

    :cond_3
    const-string v0, "CloudMgrImpl"

    const-string v2, "processDelete(error):\u8fd9\u4e9b\u5fc5\u987b\u6761\u4ef6\uff0c\u5982\u679c\u7f3a\u4e00\u4e2a\uff0c\u8bf4\u660e\u670d\u52a1\u5668\u5904\u7406\u6709\u95ee\u9898"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_4
    sget-object v0, Lcn/kuwo/base/bean/ListType;->p:Lcn/kuwo/base/bean/ListType;

    iget v1, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcn/kuwo/mod/list/CloudHelp;->b(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;

    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processDelete(error):\u5220\u9664\u6ca1\u6709\u6210\u529f,\u91cd\u65b0\u6784\u5efa\u4e00\u4e2a\u5217\u8868\u63d2\u5165 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/CloudMgrImpl;->c(Lcn/kuwo/mod/list/CloudListData;)V

    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public f()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->e()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/StringBuilder;)Z

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    sget-object v2, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/StringBuilder;)Z

    :cond_0
    sget-object v0, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/StringBuilder;)Z

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/list/ListMgrImpl;->g()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v3

    sget-object v4, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lcn/kuwo/mod/list/MusicListInner;->h:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    iget v3, v0, Lcn/kuwo/mod/list/MusicListInner;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcn/kuwo/mod/list/MusicListInner;->h:I

    invoke-static {v1, v0}, Lcn/kuwo/mod/list/CloudHelp;->b(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z

    invoke-virtual {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->l()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v1, v0}, Lcn/kuwo/mod/list/CloudHelp;->c(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z

    invoke-virtual {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Lcn/kuwo/mod/list/CloudHelp;->e(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcn/kuwo/kwmusiccar/App;->IS_DEBUG:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    sget-object v2, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->d(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_5
    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    sget-object v2, Lcn/kuwo/base/bean/ListType;->p:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->d(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v1, v0}, Lcn/kuwo/mod/list/CloudHelp;->d(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f(Lcn/kuwo/mod/list/CloudListData;)Z
    .locals 2

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    if-eqz v0, :cond_0

    iget v1, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    iget v1, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string v1, "CloudMgrImpl"

    const-string v2, "synchronize(start)"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->h:Lcn/kuwo/base/http/HttpSession;

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "CloudMgrImpl"

    const-string v2, "synchronize(return):\u6b63\u5728\u540c\u6b65\u6216\u8005\u6b63\u5728\u8be2\u95ee\u5217\u8868\u5408\u5e76\u60c5\u51b5\uff0c\u4e0d\u80fd\u53d1\u8d77\u65b0\u7684\u540c\u6b65\u8bf7\u6c42"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v1

    sget v2, Lcn/kuwo/base/bean/UserInfo;->e:I

    if-ne v1, v2, :cond_3

    const-string v1, "CloudMgrImpl"

    const-string v2, "synchronize(error):\u975e\u767b\u9646\u72b6\u6001\u4e0b\u4e0d\u80fd\u540c\u6b65"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v1

    sget v2, Lcn/kuwo/base/bean/UserInfo;->g:I

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/mod/list/ListMgrImpl;->c()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CloudMgrImpl"

    const-string v2, "synchronize(error):\u5217\u8868\u6b63\u5728\u52a0\u8f7d\uff0c\u4e0d\u80fd\u540c\u6b65\u3002"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->l:I

    if-lez v1, :cond_5

    iget v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->l:I

    const-string v1, "CloudMgrImpl"

    const-string v2, "synchronize(error):\u670d\u52a1\u5668\u5fd9\u3002"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "CloudMgrImpl"

    const-string v2, "synchronize(error):command empty"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?op=ucheck&fmt=mobile&client=android&compress=yes&uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v3

    invoke-interface {v3}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v3

    invoke-interface {v3}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcn/kuwo/kwmusiccar/App;->IS_DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "CloudMgrImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v3, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v3}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    iput-object v3, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    :try_start_0
    const-string v3, "GBK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v3, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, p0, v1}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;[B)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CloudMgrImpl"

    const-string v2, "synchronize(error):httpSync.asyncPost error"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    iput-object v6, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->g:Lcn/kuwo/base/http/HttpSession;

    goto/16 :goto_0

    :cond_8
    const-string v0, "CloudMgrImpl"

    const-string v1, "synchronize(ok)"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->p:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/CloudMgrImpl$1;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/list/CloudMgrImpl$1;-><init>(Lcn/kuwo/mod/list/CloudMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method g(Lcn/kuwo/mod/list/CloudListData;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "CloudMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processEmptyOperation(start):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "CloudMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processEmptyOperation(error):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v4}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/CloudMgrImpl;->f(Lcn/kuwo/mod/list/CloudListData;)Z

    :cond_1
    iget v2, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    if-lez v2, :cond_2

    iget v2, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    if-gtz v2, :cond_3

    :cond_2
    const-string v1, "CloudMgrImpl"

    const-string v2, "processEmptyOperation(error): data error"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_3
    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    if-ne v2, v3, :cond_6

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    if-nez v0, :cond_4

    const-string v0, "CloudMgrImpl"

    const-string v2, "processEmptyOperation(mid): LIST_PC_DEFAULT nonexistend, insert"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    :cond_4
    iget v2, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    iget v2, p1, Lcn/kuwo/mod/list/CloudListData;->d:I

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->h:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->h:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/list/MusicListInner;->a(Ljava/util/List;)Z

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-eq v2, v3, :cond_7

    const-string v1, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEmptyOperation(error): error type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/CloudMgrImpl;->c(Lcn/kuwo/mod/list/CloudListData;)V

    move v0, v1

    goto :goto_0
.end method

.method h(Lcn/kuwo/mod/list/CloudListData;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcn/kuwo/mod/list/CloudListData;->g:Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    if-nez v1, :cond_2

    const-string v1, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processList(error):cloudid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcn/kuwo/mod/list/CloudListData;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/kuwo/mod/list/CloudListData;->a:Ljava/lang/String;

    invoke-static {v3}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->e:Ljava/lang/String;

    const-string v1, "ADD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/CloudListData;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->e:Ljava/lang/String;

    const-string v1, "DEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/CloudMgrImpl;->e(Lcn/kuwo/mod/list/CloudListData;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->e:Ljava/lang/String;

    const-string v1, "CHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/CloudMgrImpl;->b(Lcn/kuwo/mod/list/CloudListData;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcn/kuwo/mod/list/CloudListData;->e:Ljava/lang/String;

    const-string v1, "UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/CloudMgrImpl;->d(Lcn/kuwo/mod/list/CloudListData;)Z

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcn/kuwo/mod/list/CloudMgrImpl;->g(Lcn/kuwo/mod/list/CloudListData;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTimer(Lcn/kuwo/base/util/KwTimer;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl;->f:Lcn/kuwo/base/util/KwTimer;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/list/CloudMgrImpl;->g()Z

    :cond_0
    return-void
.end method
