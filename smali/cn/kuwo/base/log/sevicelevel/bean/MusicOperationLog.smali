.class public Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;
.super Lcn/kuwo/base/log/sevicelevel/bean/OperationLog;


# instance fields
.field private a:Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;

.field private b:Ljava/util/List;

.field private c:Lcn/kuwo/base/bean/MusicList;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OperationLog;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->a:Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->d:I

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/MusicList;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->c:Lcn/kuwo/base/bean/MusicList;

    return-void
.end method

.method public a(Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->a:Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->b:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OperationLog;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->c:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_0

    const-string v0, "|LSRC:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->c:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->d:I

    if-ltz v0, :cond_1

    const-string v0, "|QUALITY:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "|MUSIC:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->d()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-wide v4, v0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_2

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->a()Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog;->b:Ljava/util/List;

    return-object v0
.end method
