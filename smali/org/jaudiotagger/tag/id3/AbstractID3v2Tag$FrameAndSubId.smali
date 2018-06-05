.class Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
.super Ljava/lang/Object;


# instance fields
.field private frameId:Ljava/lang/String;

.field private subId:Ljava/lang/String;

.field final synthetic this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->this$0:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->frameId:Ljava/lang/String;

    iput-object p3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->subId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrameId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->frameId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->subId:Ljava/lang/String;

    return-object v0
.end method
