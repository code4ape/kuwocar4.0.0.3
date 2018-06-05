.class Lcn/kuwo/kwmusiccar/WelcomeActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/WelcomeActivity;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/WelcomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity$2;->this$0:Lcn/kuwo/kwmusiccar/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity$2;->this$0:Lcn/kuwo/kwmusiccar/WelcomeActivity;

    invoke-static {v0, v1}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->access$302(Lcn/kuwo/kwmusiccar/WelcomeActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    return-void
.end method
