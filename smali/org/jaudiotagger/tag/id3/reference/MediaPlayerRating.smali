.class public Lorg/jaudiotagger/tag/id3/reference/MediaPlayerRating;
.super Lorg/jaudiotagger/tag/id3/reference/ID3Rating;


# static fields
.field private static rating:Lorg/jaudiotagger/tag/id3/reference/ID3Rating;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/jaudiotagger/tag/id3/reference/MediaPlayerRating;->rating:Lorg/jaudiotagger/tag/id3/reference/ID3Rating;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/reference/ID3Rating;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/jaudiotagger/tag/id3/reference/ID3Rating;
    .locals 1

    sget-object v0, Lorg/jaudiotagger/tag/id3/reference/MediaPlayerRating;->rating:Lorg/jaudiotagger/tag/id3/reference/ID3Rating;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/id3/reference/MediaPlayerRating;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/reference/MediaPlayerRating;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/id3/reference/MediaPlayerRating;->rating:Lorg/jaudiotagger/tag/id3/reference/ID3Rating;

    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/id3/reference/MediaPlayerRating;->rating:Lorg/jaudiotagger/tag/id3/reference/ID3Rating;

    return-object v0
.end method


# virtual methods
.method public convertRatingFromFiveStarScale(I)I
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert Ratings from Five Star Scale accepts values from 0 to 5 not:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x40

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x80

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc4

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xff

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public convertRatingToFiveStarScale(I)I
    .locals 1

    const/4 v0, 0x1

    if-gtz p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le p1, v0, :cond_0

    const/16 v0, 0x40

    if-gt p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x80

    if-gt p1, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/16 v0, 0xc4

    if-gt p1, v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    goto :goto_0
.end method
