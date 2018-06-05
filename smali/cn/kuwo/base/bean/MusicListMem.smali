.class public Lcn/kuwo/base/bean/MusicListMem;
.super Lcn/kuwo/base/bean/MusicList;


# static fields
.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MusicListMem"

    sput-object v0, Lcn/kuwo/base/bean/MusicListMem;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/kuwo/base/bean/ListType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/base/bean/MusicList;-><init>(Lcn/kuwo/base/bean/ListType;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/MusicListMem;->f:I

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/base/bean/MusicListMem;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcn/kuwo/base/bean/MusicListMem;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Ljava/util/Collection;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcn/kuwo/base/bean/MusicListMem;->h:Ljava/lang/String;

    const-string v2, "remove:check error"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v3, v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_2
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v3, v2, v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    iget-object v1, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->a(II)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method public add(ILcn/kuwo/base/bean/Music;)V
    .locals 2

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicListMem;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcn/kuwo/base/bean/MusicListMem;->h:Ljava/lang/String;

    const-string v1, "add:check error"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public add(Lcn/kuwo/base/bean/Music;)Z
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/MusicListMem;->h:Ljava/lang/String;

    const-string v1, "add:null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/base/bean/MusicListMem;->g:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcn/kuwo/base/bean/MusicListMem;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/base/bean/MusicListMem;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcn/kuwo/base/bean/MusicListMem;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicListMem;->i()Lcn/kuwo/base/bean/MusicListMem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcn/kuwo/base/bean/MusicList;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicListMem;->i()Lcn/kuwo/base/bean/MusicListMem;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcn/kuwo/base/bean/MusicListMem;
    .locals 1

    invoke-super {p0}, Lcn/kuwo/base/bean/MusicList;->f()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicListMem;

    return-object v0
.end method

.method public set(ILcn/kuwo/base/bean/Music;)Lcn/kuwo/base/bean/Music;
    .locals 2

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    sget-object v0, Lcn/kuwo/base/bean/MusicListMem;->h:Ljava/lang/String;

    const-string v1, "set:error"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    sget-object v0, Lcn/kuwo/base/bean/MusicListMem;->h:Ljava/lang/String;

    const-string v1, "setName:null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicListMem;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object p1, p0, Lcn/kuwo/base/bean/MusicListMem;->a:Ljava/lang/String;

    goto :goto_0
.end method
