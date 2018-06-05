.class public Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;


# instance fields
.field private ivDelete:Landroid/widget/ImageView;

.field private ivDownloadstate:Landroid/widget/ImageView;

.field private ivLike:Landroid/widget/ImageView;

.field private ivPlaySingle:Landroid/widget/ImageView;

.field private ivPlaying:Landroid/widget/ImageView;

.field private tvArtist:Landroid/widget/TextView;

.field private tvIndex:Landroid/widget/TextView;

.field private tvSongName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->ivPlaySingle:Landroid/widget/ImageView;

    const v0, 0x7f0b0056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->ivPlaying:Landroid/widget/ImageView;

    const v0, 0x7f0b003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->ivDownloadstate:Landroid/widget/ImageView;

    const v0, 0x7f0b005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->ivLike:Landroid/widget/ImageView;

    const v0, 0x7f0b0057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->tvIndex:Landroid/widget/TextView;

    const v0, 0x7f0b0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->tvArtist:Landroid/widget/TextView;

    const v0, 0x7f0b000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->tvSongName:Landroid/widget/TextView;

    const v0, 0x7f0b005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->ivDelete:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->ivDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->ivLike:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->ivPlaySingle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->tvArtist:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->tvSongName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->ivPlaying:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->tvIndex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->ivDownloadstate:Landroid/widget/ImageView;

    return-object v0
.end method
