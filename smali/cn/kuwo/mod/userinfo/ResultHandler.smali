.class public abstract Lcn/kuwo/mod/userinfo/ResultHandler;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcn/kuwo/base/bean/UserInfo;

.field protected b:I


# direct methods
.method public constructor <init>(Lcn/kuwo/base/bean/UserInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/ResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    iput p2, p0, Lcn/kuwo/mod/userinfo/ResultHandler;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/base/http/HttpResult;)V
    .locals 0

    return-void
.end method
