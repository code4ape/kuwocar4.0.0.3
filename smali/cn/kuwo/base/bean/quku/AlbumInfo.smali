.class public Lcn/kuwo/base/bean/quku/AlbumInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItem;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "album"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->a:Ljava/lang/String;

    iput v2, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->b:I

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->c:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->d:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->f:Ljava/lang/String;

    iput v2, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->g:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->h:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->b:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->f:Ljava/lang/String;

    return-void
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
    iput v0, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->g:I

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/AlbumInfo;->a:Ljava/lang/String;

    return-void
.end method
