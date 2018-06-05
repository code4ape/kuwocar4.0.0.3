.class Lcn/kuwo/ui/PlayController$SkinViewHolder;
.super Ljava/lang/Object;


# instance fields
.field private bg:Landroid/view/View;

.field private ivBackground:Landroid/widget/ImageView;

.field private ivCoverShadow:Landroid/widget/ImageView;

.field private ivHome:Landroid/widget/ImageView;

.field private ivNext:Landroid/widget/ImageView;

.field private ivPlayMode:Landroid/widget/ImageView;

.field private ivPlayPuase:Landroid/widget/ImageView;

.field private ivPlaylist:Landroid/widget/ImageView;

.field private ivPre:Landroid/widget/ImageView;

.field private ivSoundEffect:Landroid/widget/ImageView;

.field private layoutPlayController:Landroid/view/View;

.field private seekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b0009

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivHome:Landroid/widget/ImageView;

    const v0, 0x7f0b0003

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivBackground:Landroid/widget/ImageView;

    const v0, 0x7f0b0004

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->layoutPlayController:Landroid/view/View;

    const v0, 0x7f0b0011

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivPlayPuase:Landroid/widget/ImageView;

    const v0, 0x7f0b0012

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivNext:Landroid/widget/ImageView;

    const v0, 0x7f0b000e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivPre:Landroid/widget/ImageView;

    const v0, 0x7f0b000a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->bg:Landroid/view/View;

    const v0, 0x7f0b000c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivCoverShadow:Landroid/widget/ImageView;

    const v0, 0x7f0b0014

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivSoundEffect:Landroid/widget/ImageView;

    const v0, 0x7f0b0015

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivPlaylist:Landroid/widget/ImageView;

    const v0, 0x7f0b0013

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivPlayMode:Landroid/widget/ImageView;

    const v0, 0x7f0b0007

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->seekBar:Landroid/widget/SeekBar;

    return-void
.end method

.method static synthetic access$1000(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivPre:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivPlaylist:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivSoundEffect:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivHome:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->layoutPlayController:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcn/kuwo/ui/PlayController$SkinViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$SkinViewHolder;->ivCoverShadow:Landroid/widget/ImageView;

    return-object v0
.end method
