.class public Lcn/kuwo/mod/push/AppContext;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 2

    const-class v1, Lcn/kuwo/mod/push/AppContext;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->VERSION_CODE:Ljava/lang/String;

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->b:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->VERSION_NAME:Ljava/lang/String;

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->c:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->INSTALL_SOURCE:Ljava/lang/String;

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->d:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->a:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->e:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/base/util/DeviceUtils;->MAC_ADDR:Ljava/lang/String;

    sput-object v0, Lcn/kuwo/mod/push/AppContext;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
