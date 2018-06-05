.class public Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xe

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;)Landroid/app/Dialog;
    .locals 1

    invoke-static {p0}, Lcn/kuwo/ui/dialog/DialogUtils;->showAdDialog(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Lcn/kuwo/kwmusiccar/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public static b(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;)V
    .locals 6

    const/16 v3, 0x64

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Lcn/kuwo/kwmusiccar/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v3, v3}, Lcn/kuwo/base/image/BitmapUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/mod/mobilead/audioad/AudioAdUtils$1;-><init>(Landroid/widget/ImageView;Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
