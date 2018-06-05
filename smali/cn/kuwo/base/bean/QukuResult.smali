.class public Lcn/kuwo/base/bean/QukuResult;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcn/kuwo/base/bean/QukuResult$ResultType;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcn/kuwo/base/bean/QukuResult$ResultType;->c:Lcn/kuwo/base/bean/QukuResult$ResultType;

    iput-object v0, p0, Lcn/kuwo/base/bean/QukuResult;->a:Lcn/kuwo/base/bean/QukuResult$ResultType;

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/base/bean/QukuResult;->b:J

    return-wide v0
.end method

.method public getSig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/QukuResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/bean/QukuResult;->b:J

    return-void
.end method

.method public setSig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/QukuResult;->c:Ljava/lang/String;

    return-void
.end method
