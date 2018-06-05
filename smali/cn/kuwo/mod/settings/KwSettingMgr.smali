.class public abstract Lcn/kuwo/mod/settings/KwSettingMgr;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcn/kuwo/mod/settings/KwSettingMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/mod/settings/KwSettingMgrImp;

    invoke-direct {v0}, Lcn/kuwo/mod/settings/KwSettingMgrImp;-><init>()V

    sput-object v0, Lcn/kuwo/mod/settings/KwSettingMgr;->a:Lcn/kuwo/mod/settings/KwSettingMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/kuwo/mod/settings/KwSettingMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/settings/KwSettingMgr;->a:Lcn/kuwo/mod/settings/KwSettingMgr;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;I)I
.end method

.method public abstract a(Ljava/lang/String;Z)Z
.end method

.method public abstract b()V
.end method
