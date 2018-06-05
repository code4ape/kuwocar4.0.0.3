.class Lcn/kuwo/base/util/KwLocationClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/base/util/KwLocationClient;


# direct methods
.method constructor <init>(Lcn/kuwo/base/util/KwLocationClient;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/KwLocationClient$1;->this$0:Lcn/kuwo/base/util/KwLocationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 8

    const-string v0, "\u827e\u8fe6\u53f7"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocTypeDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    const-string v0, "\u827e\u8fe6\u53f7"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDistrict()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcn/kuwo/base/util/KwLocationClient$KwLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V

    iget-object v1, p0, Lcn/kuwo/base/util/KwLocationClient$1;->this$0:Lcn/kuwo/base/util/KwLocationClient;

    invoke-static {v1}, Lcn/kuwo/base/util/KwLocationClient;->access$000(Lcn/kuwo/base/util/KwLocationClient;)Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/util/KwLocationClient$1;->this$0:Lcn/kuwo/base/util/KwLocationClient;

    invoke-static {v2}, Lcn/kuwo/base/util/KwLocationClient;->access$000(Lcn/kuwo/base/util/KwLocationClient;)Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->equalLocation(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/kuwo/base/util/KwLocationClient$1;->this$0:Lcn/kuwo/base/util/KwLocationClient;

    invoke-static {v2, v0}, Lcn/kuwo/base/util/KwLocationClient;->access$002(Lcn/kuwo/base/util/KwLocationClient;Lcn/kuwo/base/util/KwLocationClient$KwLocation;)Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v2

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->z:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/base/util/KwLocationClient$1$1;

    invoke-direct {v4, p0, v0, v1}, Lcn/kuwo/base/util/KwLocationClient$1$1;-><init>(Lcn/kuwo/base/util/KwLocationClient$1;Lcn/kuwo/base/util/KwLocationClient$KwLocation;Lcn/kuwo/base/util/KwLocationClient$KwLocation;)V

    invoke-virtual {v2, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method
