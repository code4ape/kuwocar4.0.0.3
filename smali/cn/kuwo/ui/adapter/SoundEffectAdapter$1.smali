.class Lcn/kuwo/ui/adapter/SoundEffectAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/adapter/SoundEffectAdapter;

.field final synthetic val$i:I

.field final synthetic val$soundEffectViewHolder:Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/adapter/SoundEffectAdapter;ILcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$1;->this$0:Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    iput p2, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$1;->val$i:I

    iput-object p3, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$1;->val$soundEffectViewHolder:Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$1;->val$i:I

    iget-object v1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$1;->this$0:Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    invoke-static {v1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->access$500(Lcn/kuwo/ui/adapter/SoundEffectAdapter;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$1;->val$soundEffectViewHolder:Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;

    invoke-static {v0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;->access$200(Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffectViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
