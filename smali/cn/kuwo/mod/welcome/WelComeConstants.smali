.class public Lcn/kuwo/mod/welcome/WelComeConstants;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:J

.field public static c:J

.field public static d:Ljava/io/File;

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://www.koowo.com/pa_mbox/shouji/android/logo/kj.jpg"

    sput-object v0, Lcn/kuwo/mod/welcome/WelComeConstants;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/kuwo/mod/welcome/WelComeConstants;->b:J

    const-wide/32 v0, 0x9dfba

    sput-wide v0, Lcn/kuwo/mod/welcome/WelComeConstants;->c:J

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/mod/welcome/WelComeConstants;->d:Ljava/io/File;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/mod/welcome/WelComeConstants;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
