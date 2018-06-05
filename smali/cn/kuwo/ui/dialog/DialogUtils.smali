.class public Lcn/kuwo/ui/dialog/DialogUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static showAboutKuwoDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 5

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040002

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v2, 0x7f0601be

    invoke-static {p0, v2}, Lcn/kuwo/ui/dialog/DialogUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f060538

    invoke-static {p0, v3}, Lcn/kuwo/ui/dialog/DialogUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0b0026

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/util/DeviceUtils;->VERSION_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/kuwo/base/util/DeviceUtils;->getReleaseTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-object v1
.end method

.method public static showAdDialog(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static showDownloadDialog(Landroid/content/Context;Lcn/kuwo/base/bean/Music;)Landroid/app/Dialog;
    .locals 1

    new-instance v0, Lcn/kuwo/ui/dialog/DownloadDialog;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/dialog/DownloadDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcn/kuwo/ui/dialog/DownloadDialog;->setMusic(Lcn/kuwo/base/bean/Music;)V

    invoke-virtual {v0}, Lcn/kuwo/ui/dialog/DownloadDialog;->show()V

    return-object v0
.end method

.method public static showDownloadDialog(Landroid/content/Context;Ljava/util/List;)Landroid/app/Dialog;
    .locals 1

    new-instance v0, Lcn/kuwo/ui/dialog/DownloadDialog;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/dialog/DownloadDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcn/kuwo/ui/dialog/DownloadDialog;->setMusics(Ljava/util/List;)V

    invoke-virtual {v0}, Lcn/kuwo/ui/dialog/DownloadDialog;->show()V

    return-object v0
.end method

.method public static showDownloadQualitySelectDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1

    new-instance v0, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;->show()V

    return-object v0
.end method

.method public static showListenQualitySelectDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1

    new-instance v0, Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog;->show()V

    return-object v0
.end method

.method public static showLoginDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1

    new-instance v0, Lcn/kuwo/ui/dialog/LoginDialog;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 7

    const/4 v3, 0x0

    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040005

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f06014f

    invoke-static {p0, v2}, Lcn/kuwo/ui/dialog/DialogUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    const v5, 0x7f060491

    invoke-static {p0, v5}, Lcn/kuwo/ui/dialog/DialogUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v5

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v5, 0x106000d

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v2, 0x7f0b0033

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b0035

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    packed-switch v0, :pswitch_data_0

    move-object v2, v3

    :goto_0
    new-instance v3, Lcn/kuwo/ui/dialog/DialogUtils$1;

    invoke-direct {v3, p6, v4}, Lcn/kuwo/ui/dialog/DialogUtils$1;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V

    if-eqz v2, :cond_6

    const v0, 0x7f0b0076

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f0b009b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f0b009c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-object v4

    :pswitch_0
    const v0, 0x7f040027

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f040028

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f04001f

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
