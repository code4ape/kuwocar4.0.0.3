.class public Lcn/kuwo/base/util/PlayMusicHelper;
.super Ljava/lang/Object;


# static fields
.field private static final FROM_SUFFIX:Ljava/lang/String; = "from:"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrom()Ljava/lang/String;
    .locals 3

    const-string v0, "appconfig"

    const-string v1, "key_pre_play_list_from"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isPlayCurrent(J)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/PlayMusicHelper;->isPlayCurrent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPlayCurrent(Lcn/kuwo/base/bean/MusicList;)Z
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/PlayMusicHelper;->isPlayCurrent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isPlayCurrent(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcn/kuwo/base/util/PlayMusicHelper;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static play(Lcn/kuwo/base/bean/Music;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SD\u5361\u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "list.temporary"

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    :cond_2
    if-ltz v0, :cond_3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->c()I

    move-result v0

    if-gez v0, :cond_4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "list.temporary"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    move-result v0

    :goto_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    const-string v2, "list.temporary"

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    const-string v2, "list.temporary"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, p0, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;I)I

    move-result v0

    goto :goto_1
.end method

.method public static play(Ljava/util/List;I)V
    .locals 4

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "\u6ca1\u6709\u9009\u4e2d\u7684\u6b4c\u66f2\uff01"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SD\u5361\u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "list.temporary"

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->c()I

    move-result v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v2

    const-string v3, "list.temporary"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v3, p0, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;I)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    const-string v2, "list.temporary"

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto :goto_0
.end method

.method public static playMusiclist(Lcn/kuwo/base/bean/MusicList;I)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicList;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appconfig"

    const-string v3, "key_pre_play_list_from"

    invoke-static {v2, v3, v1, v5}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    const-string v2, "list.temporary"

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v2

    const-string v3, "list.temporary"

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    invoke-interface {v2, v3, v4, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;II)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    const-string v2, "list.temporary"

    invoke-interface {v1, v2, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;)I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string v0, "\u6b4c\u66f2\u6216\u64ad\u653e\u5217\u8868\u4e0d\u5b58\u5728"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    const-string v0, "\u64ad\u653e\u5217\u8868\u5df2\u8fbe\u5230\u4e0a\u9650\uff0c\u6e05\u7406\u540e\u91cd\u8bd5"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    const-string v2, "list.temporary"

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_2

    const-string v0, "\u64ad\u653e"

    const-string v2, "\u5355\u66f2\u64ad\u653e"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto :goto_0

    :cond_2
    const-string v0, "\u64ad\u653e"

    const-string v2, "\u6279\u91cf\u64ad\u653e"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static playOnlineMusic(Ljava/util/List;JI)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v4, :cond_2

    const-string v0, "\u6ca1\u6709\u9009\u4e2d\u7684\u6b4c\u66f2\uff01"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->isAvaliable()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "SD\u5361\u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-gez p3, :cond_4

    move p3, v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appconfig"

    const-string v3, "key_pre_play_list_from"

    invoke-static {v2, v3, v1, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    const-string v2, "list.temporary"

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v2

    const-string v3, "list.temporary"

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    invoke-interface {v2, v3, v0, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;II)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "list.temporary"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;)I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_5

    const-string v0, "\u6b4c\u66f2\u6216\u64ad\u653e\u5217\u8868\u4e0d\u5b58\u5728"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, -0x2

    if-ne p3, v0, :cond_6

    const-string v0, "\u64ad\u653e\u5217\u8868\u5df2\u8fbe\u5230\u4e0a\u9650\uff0c\u6e05\u7406\u540e\u91cd\u8bd5"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "list.temporary"

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_7

    const-string v1, "\u64ad\u653e"

    const-string v2, "\u5355\u66f2\u64ad\u653e"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto/16 :goto_0

    :cond_7
    const-string v1, "\u64ad\u653e"

    const-string v2, "\u6279\u91cf\u64ad\u653e"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
