.class public Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;
.super Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;


# instance fields
.field private a:Lcn/kuwo/base/bean/Music;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

.field private e:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->d:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->b:I

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->a:Lcn/kuwo/base/bean/Music;

    return-void
.end method

.method public a(Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->d:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|LSRC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|QUALITY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|MUSIC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->a:Lcn/kuwo/base/bean/Music;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->a:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "|ENDTYPE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->a()Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->d()Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->e:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    return-object v0
.end method

.method public setType(Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog;->e:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    return-void
.end method
