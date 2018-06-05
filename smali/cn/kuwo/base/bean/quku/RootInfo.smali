.class public Lcn/kuwo/base/bean/quku/RootInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItemList;


# static fields
.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "grid_menu"

    sput-object v0, Lcn/kuwo/base/bean/quku/RootInfo;->c:Ljava/lang/String;

    const-string v0, "billbord"

    sput-object v0, Lcn/kuwo/base/bean/quku/RootInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "root"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/RootInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/RootInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setSig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/RootInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/RootInfo;->g:Ljava/lang/String;

    return-void
.end method
