.class public Lcn/kuwo/mod/mobilead/AdParamHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;

.field private final c:Ljava/lang/StringBuilder;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->c:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->d:Z

    iput-boolean v1, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->e:Z

    iput-boolean v1, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->f:Z

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/AdParamHandler;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "game_node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const-string v0, "blueToothConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "item_node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GxhPopup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/AdParamHandler;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "downRenewDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    const-string v1, "key_down_renew_text"

    const-string v2, "text"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    const-string v1, "key_down_renew_btn"

    const-string v2, "btnTitle"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "remindRenewDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    const-string v1, "key_mind_renew_text"

    const-string v2, "text"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    const-string v1, "key_mind_renew_btn"

    const-string v2, "btnTitle"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v0, "payButton"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    :cond_5
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    const-string v1, "key_text"

    const-string v2, "btnTitle"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    const-string v1, "key_desc"

    const-string v2, "btnDesc"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const-string v0, "singleBuyBtn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    :cond_7
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    const-string v1, "single_buy_key_text"

    const-string v2, "btnTitle"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    const-string v1, "single_buy_key_desc"

    const-string v2, "btnDesc"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->a:Ljava/util/HashMap;

    const-string v1, "paydialog_subtitle"

    const-string v2, "dialogSubTitle"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    const-string v0, "FloatAd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Vivo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SearchGameList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "game_node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KaipingAd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PlayPageItemList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "item_node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SysFeed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HardwareConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "blueToothConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mobileUnitConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "headsetConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sidebarShopConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audioParam"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;

    invoke-direct {v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;

    const-string v1, "playInterval"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;

    const-string v1, "startPlayTime"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;

    const-string v1, "playNum"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "downLoadButton"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SidebarVipConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LyricAdShowConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motorList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "carousel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FlowPopup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FlowSong"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GxhPopupList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GxhPopup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "clickConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0
.end method

.method protected final b()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->f:Z

    return v0
.end method

.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->d:Z

    if-nez v0, :cond_1

    const-string v0, "root"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->d:Z

    iput-boolean v1, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->e:Z

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->f:Z

    if-nez v0, :cond_0

    :cond_0
    iput-boolean v1, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->f:Z

    :goto_0
    iget-object v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcn/kuwo/mod/mobilead/AdParamHandler;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 0

    invoke-virtual {p0}, Lcn/kuwo/mod/mobilead/AdParamHandler;->a()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "root"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->d:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/mobilead/AdParamHandler;->f:Z

    invoke-virtual {p0, p2, p3, p4}, Lcn/kuwo/mod/mobilead/AdParamHandler;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0
.end method
