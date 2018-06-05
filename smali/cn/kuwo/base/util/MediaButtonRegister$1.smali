.class final Lcn/kuwo/base/util/MediaButtonRegister$1;
.super Landroid/media/session/MediaSession$Callback;


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/MediaButtonRegister$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/MediaButtonRegister$1;->val$mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/kuwo/kwmusiccar/MediaButtonReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
