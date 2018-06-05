.class public Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_CHECK_UPDATE:I = 0x9

.field public static final TYPE_CLEAR_CACHE:I = 0x8

.field public static final TYPE_DOANLOWD_WHEN_PLAYING:I = 0xb

.field public static final TYPE_DOWNLOAD_MANAGE:I = 0xc

.field public static final TYPE_DOWNLOAD_PATH:I = 0x7

.field public static final TYPE_DOWNLOAD_SETTING:I = 0x6

.field public static final TYPE_EXIT:I = 0xa

.field public static final TYPE_LISTEN_SETTING:I = 0x4

.field public static final TYPE_LOGIN:I = 0x5

.field public static final TYPE_MUSCI_LIST:I = 0x1

.field public static final TYPE_SKIN:I = 0x2

.field public static final TYPE_SOUND_EFFECT:I = 0x3


# instance fields
.field private id:Ljava/lang/String;

.field private musicList:Lcn/kuwo/base/bean/MusicList;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;
    .locals 1

    new-instance v0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    invoke-direct {v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;-><init>()V

    invoke-virtual {v0, p0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->setType(I)V

    invoke-virtual {v0, p1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getItem(Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;
    .locals 2

    new-instance v0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    invoke-direct {v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;-><init>()V

    invoke-virtual {v0, p0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->setMusicList(Lcn/kuwo/base/bean/MusicList;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->setType(I)V

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicList()Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->musicList:Lcn/kuwo/base/bean/MusicList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->type:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setMusicList(Lcn/kuwo/base/bean/MusicList;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->musicList:Lcn/kuwo/base/bean/MusicList;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->type:I

    return-void
.end method
