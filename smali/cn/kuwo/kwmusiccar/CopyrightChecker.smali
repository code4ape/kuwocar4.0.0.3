.class public Lcn/kuwo/kwmusiccar/CopyrightChecker;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    const-string v0, "last_check_copyright"

    invoke-static {v0}, Lcn/kuwo/base/util/SettingsUtils;->getStringSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v1, v0}, Lcn/kuwo/base/util/KwDate;-><init>(Ljava/lang/String;)V

    const v0, 0x15180

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/kuwo/base/util/KwDate;->increase(II)Lcn/kuwo/base/util/KwDate;

    new-instance v0, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v0}, Lcn/kuwo/base/util/KwDate;-><init>()V

    invoke-virtual {v1, v0}, Lcn/kuwo/base/util/KwDate;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "last_check_copyright"

    new-instance v1, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v1}, Lcn/kuwo/base/util/KwDate;-><init>()V

    invoke-virtual {v1}, Lcn/kuwo/base/util/KwDate;->toDateTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/util/SettingsUtils;->setStringSettings(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/kuwo/kwmusiccar/CopyrightChecker$1;

    invoke-direct {v1, p0}, Lcn/kuwo/kwmusiccar/CopyrightChecker$1;-><init>(Lcn/kuwo/kwmusiccar/CopyrightChecker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
