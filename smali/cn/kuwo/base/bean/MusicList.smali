.class public abstract Lcn/kuwo/base/bean/MusicList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected final c:Lcn/kuwo/base/bean/ListType;

.field protected d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/bean/ListType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/base/bean/MusicList;->c:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-direct {v0, p0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;-><init>(Lcn/kuwo/base/bean/MusicList;)V

    iput-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    return-void
.end method

.method public constructor <init>(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/base/bean/MusicList;-><init>(Lcn/kuwo/base/bean/ListType;)V

    iput-object p2, p0, Lcn/kuwo/base/bean/MusicList;->a:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/base/bean/MusicList;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/kuwo/base/bean/MusicList;->a(JI)I

    move-result v0

    return v0
.end method

.method public a(JI)I
    .locals 3

    :goto_0
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-wide v0, v0, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    :goto_1
    return p3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    goto :goto_1
.end method

.method public a(Lcn/kuwo/base/bean/Music;I)I
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_2

    :cond_0
    move p2, v1

    :goto_0
    return p2

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    :cond_2
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_3
    move p2, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(II)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v1, p1, p2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lcn/kuwo/base/bean/Music;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/base/bean/MusicList;->e:Ljava/lang/String;

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
    iput-object p1, p0, Lcn/kuwo/base/bean/MusicList;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public b(Lcn/kuwo/base/bean/Music;I)I
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_2

    :cond_0
    move p2, v1

    :goto_0
    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    :cond_2
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p2}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/Music;->b(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_3
    move p2, v1

    goto :goto_0
.end method

.method public b()Lcn/kuwo/base/bean/ListType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->c:Lcn/kuwo/base/bean/ListType;

    return-object v0
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public b(Lcn/kuwo/base/bean/Music;)Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lcn/kuwo/base/bean/Music;)I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicList;->f()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcn/kuwo/base/bean/Music;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/base/bean/MusicList;->a(Lcn/kuwo/base/bean/Music;I)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/MusicList;->f:I

    return v0
.end method

.method public e(Lcn/kuwo/base/bean/Music;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/base/bean/MusicList;->b(Lcn/kuwo/base/bean/Music;I)I

    move-result v0

    return v0
.end method

.method public f()Lcn/kuwo/base/bean/MusicList;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    new-instance v1, Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-direct {v1, p0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;-><init>(Lcn/kuwo/base/bean/MusicList;)V

    iput-object v1, v0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    iget-object v1, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/base/bean/Music;

    iget-object v3, v0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/Music;->f()Lcn/kuwo/base/bean/Music;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public get(I)Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->d:Lcn/kuwo/base/bean/MusicList$MyArrayList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList$MyArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/MusicList;->b:Ljava/lang/String;

    return-object v0
.end method
