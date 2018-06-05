.class public Lcn/kuwo/base/log/UserInfoLogUtils;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/log/UserInfoLogUtils;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/log/UserInfoLogUtils;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/log/UserInfoLogUtils;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/log/UserInfoLogUtils;->d:Ljava/util/Date;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/log/UserInfoLogUtils;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/UserInfoLogUtils;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/UserInfoLogUtils;->a:Ljava/lang/String;

    return-object v0
.end method
