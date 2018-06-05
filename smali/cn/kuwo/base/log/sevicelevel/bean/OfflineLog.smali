.class public Lcn/kuwo/base/log/sevicelevel/bean/OfflineLog;
.super Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;-><init>()V

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/OfflineLog;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/kuwo/base/log/sevicelevel/bean/OfflineLog;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/OfflineLog;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/OfflineLog;->b:Ljava/lang/String;

    return-object v0
.end method
