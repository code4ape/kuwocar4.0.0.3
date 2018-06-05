.class public Lcn/kuwo/base/db/old/OldMusicList;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcn/kuwo/base/db/old/OldMusicList;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusicList;->b:Ljava/lang/String;

    iput v1, p0, Lcn/kuwo/base/db/old/OldMusicList;->c:I

    iput-boolean v1, p0, Lcn/kuwo/base/db/old/OldMusicList;->d:Z

    iput-boolean v1, p0, Lcn/kuwo/base/db/old/OldMusicList;->e:Z

    iput-boolean v1, p0, Lcn/kuwo/base/db/old/OldMusicList;->h:Z

    iput v1, p0, Lcn/kuwo/base/db/old/OldMusicList;->i:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusicList;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusicList;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/db/old/OldMusicList;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/db/old/OldMusicList;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/db/old/OldMusicList;->h:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/db/old/OldMusicList;->h:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/db/old/OldMusicList;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/db/old/OldMusicList;->c:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/old/OldMusicList;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/db/old/OldMusicList;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/db/old/OldMusicList;->i:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/db/old/OldMusicList;->b:Ljava/lang/String;

    return-void
.end method

.method public setServerId(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/db/old/OldMusicList;->i:I

    return-void
.end method
