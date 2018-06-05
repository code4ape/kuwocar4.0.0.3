.class public Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Z

.field private d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xe

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lyricad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    new-instance v0, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v0}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/http/HttpSession;->a(Z)V

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/http/HttpSession;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    sget-boolean v0, Lcn/kuwo/kwmusiccar/App;->IS_FORGROUND:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$2;

    invoke-direct {v1, p0}, Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil$2;-><init>(Lcn/kuwo/mod/mobilead/audioad/LyricFloatAdUtil;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method
