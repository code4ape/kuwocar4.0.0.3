.class public Lcn/kuwo/base/bean/quku/AppInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItem;


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "download"

    sput-object v0, Lcn/kuwo/base/bean/quku/AppInfo;->b:Ljava/lang/String;

    const-string v0, "open"

    sput-object v0, Lcn/kuwo/base/bean/quku/AppInfo;->c:Ljava/lang/String;

    const-string v0, "inner"

    sput-object v0, Lcn/kuwo/base/bean/quku/AppInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "app"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/AppInfo;->a:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/AppInfo;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/bean/quku/AppInfo;->g:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/AppInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/AppInfo;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/AppInfo;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/bean/quku/AppInfo;->g:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/AppInfo;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/AppInfo;->a:Ljava/lang/String;

    return-void
.end method
