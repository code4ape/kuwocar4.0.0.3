.class public Lcn/kuwo/base/bean/quku/RecadInfo;
.super Lcn/kuwo/base/bean/quku/AppInfo;


# static fields
.field public static a:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "small"

    sput-object v0, Lcn/kuwo/base/bean/quku/RecadInfo;->a:Ljava/lang/String;

    const-string v0, "long"

    sput-object v0, Lcn/kuwo/base/bean/quku/RecadInfo;->f:Ljava/lang/String;

    const-string v0, "none"

    sput-object v0, Lcn/kuwo/base/bean/quku/RecadInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "recad"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/AppInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/RecadInfo;->h:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/base/bean/quku/RecadInfo;->i:Ljava/lang/String;

    return-void
.end method
