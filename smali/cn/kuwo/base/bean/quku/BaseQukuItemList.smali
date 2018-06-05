.class public Lcn/kuwo/base/bean/quku/BaseQukuItemList;
.super Lcn/kuwo/base/bean/quku/BaseQukuItem;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "music"

    sput-object v0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->a:Ljava/lang/String;

    const-string v0, "songlist"

    sput-object v0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "list"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->c:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->d:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->f:J

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->g:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->h:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->c:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->d:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->f:J

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->g:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->h:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->a(Lcn/kuwo/base/bean/quku/BaseQukuItemList;)V

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->g:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->h:Ljava/lang/String;

    return-void
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->f:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->f:J

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->c:Ljava/lang/String;

    return-void
.end method
