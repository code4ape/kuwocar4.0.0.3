.class public Lcn/kuwo/base/bean/quku/TabInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItemList;


# static fields
.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# instance fields
.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "music"

    sput-object v0, Lcn/kuwo/base/bean/quku/TabInfo;->c:Ljava/lang/String;

    const-string v0, "album"

    sput-object v0, Lcn/kuwo/base/bean/quku/TabInfo;->d:Ljava/lang/String;

    const-string v0, "mv"

    sput-object v0, Lcn/kuwo/base/bean/quku/TabInfo;->f:Ljava/lang/String;

    const-string v0, "artist"

    sput-object v0, Lcn/kuwo/base/bean/quku/TabInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "tab"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/bean/quku/TabInfo;->i:I

    return-void
.end method


# virtual methods
.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/TabInfo;->h:Ljava/lang/String;

    return-void
.end method
