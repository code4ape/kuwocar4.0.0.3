.class public Lcn/kuwo/base/util/SDCardInfo;
.super Ljava/lang/Object;


# instance fields
.field private label:Ljava/lang/String;

.field private mountPoint:Ljava/lang/String;

.field private mounted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/SDCardInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMountPoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/SDCardInfo;->mountPoint:Ljava/lang/String;

    return-object v0
.end method

.method public isMounted()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/util/SDCardInfo;->mounted:Z

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/SDCardInfo;->label:Ljava/lang/String;

    return-void
.end method

.method public setMountPoint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/SDCardInfo;->mountPoint:Ljava/lang/String;

    return-void
.end method

.method public setMounted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/util/SDCardInfo;->mounted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDCardInfo [label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/SDCardInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mountPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/SDCardInfo;->mountPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mounted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/kuwo/base/util/SDCardInfo;->mounted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
