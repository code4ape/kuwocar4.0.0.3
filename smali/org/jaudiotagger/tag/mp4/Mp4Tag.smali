.class public Lorg/jaudiotagger/tag/mp4/Mp4Tag;
.super Lorg/jaudiotagger/audio/generic/AbstractTag;


# static fields
.field private static final tagFieldToMp4Field:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/jaudiotagger/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->AMAZON_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ASIN:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTISTS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTISTS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BARCODE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->BARCODE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BPM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->BPM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CATALOG_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CATALOGNO:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMMENT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM1:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_1:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM2:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_2:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM3:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_3:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM4:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_4:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM5:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_5:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENCODER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ENCODER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->FBPM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->FBPM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GROUPING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GROUPING:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ISRC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ISRC:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->KEY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->KEY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LYRICS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MEDIA:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MEDIA:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_DISC_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_DISCID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_ORIGINAL_RELEASE_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ORIGINALALBUMID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUMARTISTID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUMID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->RELEASECOUNTRY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_GROUP_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_RELEASE_GROUPID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUM_STATUS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUM_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_TRACK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_TRACKID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORKID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICIP_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICIP_PUID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->OCCASION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_OCCASION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_ALBUM_TITLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_YEAR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_YEAR:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->QUALITY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_QUALITY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->SCORE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LABEL:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->REMIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->REMIXER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SCRIPT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->SCRIPT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TAGS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TAGS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TEMPO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TEMPO:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TITLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DAY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENGINEER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ENGINEER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PRODUCER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PRODUCER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DJMIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DJMIXER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MIXER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARRANGER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARRANGER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ACOUSTID_FINGERPRINT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ACOUSTID_FINGERPRINT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ACOUSTID_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ACOUSTID_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COUNTRY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COUNTRY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;-><init>()V

    return-void
.end method

.method private createGenreField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createArtworkField([B)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;-><init>([B)V

    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_2

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_2

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_2

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_6

    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_3

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(I)V

    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_4

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a number as required"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_5

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(I)V

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_6

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_6
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->createField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object v0

    goto :goto_0
.end method

.method public createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .locals 2

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;-><init>([B)V

    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_3

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;->TRUE_VALUE:Ljava/lang/String;

    :cond_2
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_4

    invoke-direct {p0, p2}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->createGenreField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->DISC_NO:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_5

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {v0, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->TRACK_NO:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_6

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {v0, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->BYTE:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_7

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->NUMBER:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_8

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->REVERSE_DNS:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_9

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_a

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->TEXT:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_b

    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->UNKNOWN:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void
.end method

.method public get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 5

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-static {}, Lorg/jaudiotagger/tag/images/ArtworkFactory;->getNew()Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->getData()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setBinaryData([B)V

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->getMimeTypeForImageType(Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/jaudiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    return-object v0
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    return-object v0
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_3

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagTextField;

    invoke-interface {v0}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_4

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_8

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_5

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_8

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_6

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_8

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_7

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_8

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public hasField(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 1

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAllowedEncoding(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v1

    :goto_2
    new-instance v2, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-direct {v2, v0, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(II)V

    invoke-super {p0, v2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v0

    :goto_3
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v1

    :goto_4
    new-instance v2, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-direct {v2, v0, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(II)V

    invoke-super {p0, v2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_0

    :cond_6
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v1, v2

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mpeg4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
