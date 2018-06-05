.class public Lcn/kuwo/mod/userinfo/UserInfoConstants$SinaWeibo;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://open.weibo.cn/oauth2/authorize"

    sput-object v0, Lcn/kuwo/mod/userinfo/UserInfoConstants$SinaWeibo;->a:Ljava/lang/String;

    const-string v0, "https://api.weibo.com/2/users/show.json"

    sput-object v0, Lcn/kuwo/mod/userinfo/UserInfoConstants$SinaWeibo;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
