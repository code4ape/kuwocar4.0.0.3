.class public Lcn/kuwo/base/bean/quku/ArtistInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItem;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "artist"

    sput-object v0, Lcn/kuwo/base/bean/quku/ArtistInfo;->a:Ljava/lang/String;

    const-string v0, "mv"

    sput-object v0, Lcn/kuwo/base/bean/quku/ArtistInfo;->b:Ljava/lang/String;

    const-string v0, "album"

    sput-object v0, Lcn/kuwo/base/bean/quku/ArtistInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "artist"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->d:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->f:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->g:Ljava/lang/String;

    iput v2, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->h:I

    iput v2, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->i:I

    iput v3, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->j:I

    iput v3, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->k:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iput v0, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->h:I

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iput v0, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->k:I

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iput v0, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->i:I

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/bean/quku/ArtistInfo;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
