.class final Lcn/kuwo/kwmusiccar/KwCarPlay$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic val$album:Ljava/lang/String;

.field final synthetic val$singer:Ljava/lang/String;

.field final synthetic val$songName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$songName:Ljava/lang/String;

    iput-object p2, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$singer:Ljava/lang/String;

    iput-object p3, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$album:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$songName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$songName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$singer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$singer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$album:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "\u641c\u7d22"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/base/util/PlayMusicHelper;->playMusiclist(Lcn/kuwo/base/bean/MusicList;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$album:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$200(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$singer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$singer:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$songName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$300(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_6
    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$songName:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$singer:Ljava/lang/String;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$songName:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/KwCarPlay$1;->val$singer:Ljava/lang/String;

    sget-object v3, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u5148\u542c\u542c\u672c\u5730\u6b4c\u66f2\u5427!"

    invoke-static {v1}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/base/util/PlayMusicHelper;->playMusiclist(Lcn/kuwo/base/bean/MusicList;I)V

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$200(Ljava/lang/String;)V

    goto :goto_0
.end method
