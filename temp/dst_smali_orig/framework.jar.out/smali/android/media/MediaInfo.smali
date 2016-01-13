.class public Landroid/media/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaInfo$1;,
        Landroid/media/MediaInfo$MyMediaScannerClient;,
        Landroid/media/MediaInfo$MediaTag;,
        Landroid/media/MediaInfo$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final ALBUMART_URI:Landroid/net/Uri;

.field private static final ALBUM_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final ALBUM_THUMB_FOLDER:Ljava/lang/String; = "Android/data/com.android.providers.media/albumthumbs"

.field private static final AUDIO_PROJECTION:[Ljava/lang/String;

.field public static final FILE_TYPE_AUDIO:I = 0x1

.field public static final FILE_TYPE_UNKNOWN:I = 0x0

.field public static final FILE_TYPE_VIDEO:I = 0x2

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final MEDIA_URI:Landroid/net/Uri;

.field private static final PHONESTORAGE_ALBUMART_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "MediaInfo"

.field private static libloaded:Z


# instance fields
.field private mAlbumhash:I

.field private mCaseInsensitivePaths:Z

.field private mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mIsSDSrc:Z

.field private mNativeContext:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sput-boolean v3, Landroid/media/MediaInfo;->libloaded:Z

    :try_start_0
    const-string v1, "media_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "ex":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "_data"

    aput-object v2, v1, v3

    const-string v2, "date_modified"

    aput-object v2, v1, v5

    sput-object v1, Landroid/media/MediaInfo;->AUDIO_PROJECTION:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "name"

    aput-object v2, v1, v3

    sput-object v1, Landroid/media/MediaInfo;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "album_key"

    aput-object v2, v1, v3

    const-string v2, "album_art"

    aput-object v2, v1, v5

    sput-object v1, Landroid/media/MediaInfo;->ALBUM_LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v1, "content://media/external/audio/albumart"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/media/MediaInfo;->ALBUMART_URI:Landroid/net/Uri;

    const-string v1, "content://media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/media/MediaInfo;->MEDIA_URI:Landroid/net/Uri;

    const-string v1, "content://media/phoneStorage/audio/albumart"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/media/MediaInfo;->PHONESTORAGE_ALBUMART_URI:Landroid/net/Uri;

    sput-boolean v3, Landroid/media/MediaInfo;->libloaded:Z

    const/16 v1, 0x7e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Blues"

    aput-object v2, v1, v4

    const-string v2, "Classic Rock"

    aput-object v2, v1, v3

    const-string v2, "Country"

    aput-object v2, v1, v5

    const-string v2, "Dance"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "Disco"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Funk"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Grunge"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Hip-Hop"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Jazz"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Metal"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "New Age"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Oldies"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Other"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "Pop"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "R&B"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "Rap"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "Reggae"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "Techno"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "Industrial"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "Alternative"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "Ska"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "Death Metal"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "Pranks"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "Soundtrack"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "Euro-Techno"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "Ambient"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "Trip-Hop"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "Vocal"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "Jazz+Funk"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "Fusion"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "Trance"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "Classical"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "Instrumental"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "Acid"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "House"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "Game"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "Sound Clip"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "Gospel"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "Noise"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "AlternRock"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "Bass"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "Soul"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "Punk"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "Space"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "Meditative"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "Instrumental Pop"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "Instrumental Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "Ethnic"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "Gothic"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "Darkwave"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "Techno-Industrial"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "Electronic"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "Pop-Folk"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "Eurodance"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "Dream"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "Southern Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "Comedy"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "Cult"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "Gangsta"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "Top 40"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "Christian Rap"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "Pop/Funk"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "Jungle"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "Native American"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "Cabaret"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "New Wave"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "Psychadelic"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "Rave"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "Showtunes"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "Trailer"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "Lo-Fi"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "Tribal"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "Acid Punk"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "Acid Jazz"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "Polka"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "Retro"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "Musical"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "Rock & Roll"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "Hard Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "Folk"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "Folk-Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "National Folk"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "Swing"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "Fast Fusion"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "Bebob"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "Latin"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "Revival"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "Celtic"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "Bluegrass"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "Avantgarde"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "Gothic Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "Progressive Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "Psychedelic Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "Symphonic Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "Slow Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "Big Band"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "Chorus"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "Easy Listening"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "Acoustic"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "Humour"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "Speech"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "Chanson"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "Opera"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "Chamber Music"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "Sonata"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "Symphony"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "Booty Bass"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "Primus"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "Porn Groove"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "Satire"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "Slow Jam"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "Club"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "Tango"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "Samba"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "Folklore"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "Ballad"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "Power Ballad"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "Rhythmic Soul"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "Freestyle"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "Duet"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "Punk Rock"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "Drum Solo"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "A capella"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "Euro-House"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "Dance Hall"

    aput-object v3, v1, v2

    sput-object v1, Landroid/media/MediaInfo;->ID3_GENRES:[Ljava/lang/String;

    return-void

    .end local v0    # "ex":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v4, Landroid/media/MediaInfo;->libloaded:Z

    const-string v1, "MediaInfo"

    const-string v2, "media_jni UnsatisfiedLinkError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaInfo;->mAlbumhash:I

    new-instance v0, Landroid/media/MediaInfo$MyMediaScannerClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaInfo$MyMediaScannerClient;-><init>(Landroid/media/MediaInfo;Landroid/media/MediaInfo$1;)V

    iput-object v0, p0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    sget-boolean v0, Landroid/media/MediaInfo;->libloaded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/MediaInfo;->native_setup()V

    :cond_0
    iput-object p1, p0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroid/media/MediaInfo;->mCaseInsensitivePaths:Z

    :cond_1
    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaInfo;

    .prologue
    iget-boolean v0, p0, Landroid/media/MediaInfo;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$200(Landroid/media/MediaInfo;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/media/MediaScannerClient;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaInfo;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/media/MediaInfo;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method private ensureDirExists(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const-string v1, "MediaInfo"

    const-string v2, "ensureDirExists - make dir."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "internal"    # Z
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "preferredExtension"    # Ljava/lang/String;
    .param p4, "directoryName"    # Ljava/lang/String;

    .prologue
    const-string v2, "_data"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "file":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaInfo;->generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaInfo;->ensureFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create new file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    move-object v1, p2

    .restart local v1    # "values":Landroid/content/ContentValues;
    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private ensureFileExists(Ljava/lang/String;)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return v5

    :cond_0
    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .local v4, "secondSlash":I
    if-ge v4, v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "directoryPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "MediaInfo"

    const-string v7, "File creation failed"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    goto :goto_0
.end method

.method private native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method private generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "internal"    # Z
    .param p2, "preferredExtension"    # Ljava/lang/String;
    .param p3, "directoryName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Writing to internal storage is not supported."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "directoryStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/MediaInfo;->ensureDirExists(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private insertAlbumArt(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .param p1, "albumArt"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "rowId"    # J

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "media"

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v6

    .local v6, "mediaProvider":Landroid/content/IContentProvider;
    if-nez v6, :cond_2

    const-string v9, "MediaInfo"

    const-string v10, "Can\'t acquire MediaProvider"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v9, p0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    if-eqz v9, :cond_6

    sget-object v0, Landroid/media/MediaInfo;->ALBUMART_URI:Landroid/net/Uri;

    .local v0, "albumArtUri":Landroid/net/Uri;
    :goto_1
    const/4 v3, 0x0

    .local v3, "cursor":Landroid/database/Cursor;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .local v8, "values":Landroid/content/ContentValues;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/media/MediaInfo;->getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const-wide/16 v1, 0x0

    .local v1, "albumId":J
    const/4 v5, 0x0

    .local v5, "existingAlbumArt":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v9, "_id"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v9, "album_art"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_4

    if-nez v5, :cond_4

    const-string v9, "album_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "_data"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v9, p0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v6, v9, v0, v8}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .local v7, "out":Landroid/net/Uri;
    const-string v9, "MediaInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New AlbumArt= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "out":Landroid/net/Uri;
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_5
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .end local v1    # "albumId":J
    .end local v5    # "existingAlbumArt":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .end local v0    # "albumArtUri":Landroid/net/Uri;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_6
    sget-object v0, Landroid/media/MediaInfo;->PHONESTORAGE_ALBUMART_URI:Landroid/net/Uri;

    goto :goto_1

    .restart local v0    # "albumArtUri":Landroid/net/Uri;
    .restart local v1    # "albumId":J
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "existingAlbumArt":Ljava/lang/String;
    .restart local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v9, "MediaInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error creating album thumb file, IllegalStateException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .end local v1    # "albumId":J
    .end local v4    # "ex":Ljava/lang/IllegalStateException;
    .end local v5    # "existingAlbumArt":Ljava/lang/String;
    :catch_1
    move-exception v4

    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string v9, "MediaInfo"

    const-string v10, "insertAlbumArt RemoteException "

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_7
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    goto :goto_3

    .end local v4    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    const/4 v8, 0x0

    :cond_9
    throw v9
.end method

.method private insertGenre(Ljava/lang/String;J)V
    .locals 12
    .param p1, "genre"    # Ljava/lang/String;
    .param p2, "rowId"    # J

    .prologue
    iget-boolean v1, p0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    if-eqz v1, :cond_1

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "genresUri":Landroid/net/Uri;
    :goto_0
    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-void

    .end local v2    # "genresUri":Landroid/net/Uri;
    :cond_1
    const-string v1, "phoneStorage"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .restart local v2    # "genresUri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "media"

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .local v0, "mediaProvider":Landroid/content/IContentProvider;
    if-nez v0, :cond_3

    const-string v1, "MediaInfo"

    const-string v3, "Can\'t acquire MediaProvider"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    .local v10, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/media/MediaInfo;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_9

    :cond_4
    const-string v1, "name"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v11}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    const-string v1, "MediaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Genre= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v10, :cond_5

    :try_start_2
    const-string v1, "members"

    invoke-static {v10, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    const-string v1, "audio_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v10, v11}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_7
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v1, "MediaInfo"

    const-string v3, "error creating a new genre, IllegalStateException"

    invoke-static {v1, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v9    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v9

    .local v9, "ex":Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "MediaInfo"

    const-string v3, "insertGenre RemoteException "

    invoke-static {v1, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_8
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_3

    .end local v9    # "ex":Landroid/os/RemoteException;
    :cond_9
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v10

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    const/4 v11, 0x0

    :cond_b
    throw v1
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;Z)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native setLocale(Ljava/lang/String;)V
.end method

.method private toValues(Landroid/media/MediaInfo$MediaTag;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "mediaTag"    # Landroid/media/MediaInfo$MediaTag;

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "map":Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p1, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date_modified"

    iget-wide v2, p1, Landroid/media/MediaInfo$MediaTag;->mLastModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "_size"

    iget-wide v2, p1, Landroid/media/MediaInfo$MediaTag;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mime_type"

    iget-object v2, p1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "artist"

    iget-object v1, p1, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p1, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album"

    iget-object v1, p1, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p1, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "composer"

    iget-object v2, p1, Landroid/media/MediaInfo$MediaTag;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/media/MediaInfo$MediaTag;->mYear:I

    if-eqz v1, :cond_0

    const-string v1, "year"

    iget v2, p1, Landroid/media/MediaInfo$MediaTag;->mYear:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "track"

    iget v2, p1, Landroid/media/MediaInfo$MediaTag;->mTrack:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "duration"

    iget v2, p1, Landroid/media/MediaInfo$MediaTag;->mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_1
    const-string v1, "<unknown>"

    goto :goto_0

    :cond_2
    const-string v1, "<unknown>"

    goto :goto_1
.end method


# virtual methods
.method checkMediaTag(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Z
    .locals 4
    .param p1, "mediaTag"    # Landroid/media/MediaInfo$MediaTag;
    .param p2, "drmUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "MediaInfo"

    const-string v2, "DRM uri should not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/media/MediaInfo;->isDRMAudioMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not audio file. Mime Type= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteDRMAudio(Landroid/net/Uri;)V
    .locals 9
    .param p1, "drmUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "MediaInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteDRMAudio drmUri= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "media"

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .local v2, "mediaProvider":Landroid/content/IContentProvider;
    if-nez v2, :cond_1

    const-string v4, "MediaInfo"

    const-string v5, "Can\'t acquire MediaProvider"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    if-eqz v4, :cond_2

    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "audioUri":Landroid/net/Uri;
    :goto_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "where":Ljava/lang/String;
    iget-object v4, p0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v4, p0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://media"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "where":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x0

    const-string v4, "MediaInfo"

    const-string v5, "DRMAudio deleted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "audioUri":Landroid/net/Uri;
    :cond_2
    const-string v4, "phoneStorage"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .restart local v0    # "audioUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "MediaInfo"

    const-string v5, "updateDRMAudio RemoteException "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method protected finalize()V
    .locals 1

    .prologue
    sget-boolean v0, Landroid/media/MediaInfo;->libloaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/media/MediaInfo;->native_finalize()V

    goto :goto_0
.end method

.method getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "album"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    iget-object v1, p0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "media"

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .local v0, "mediaProvider":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    const-string v1, "MediaInfo"

    const-string v3, "Can\'t acquire MediaProvider"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v6

    :cond_0
    invoke-static {p1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "k":Ljava/lang/String;
    iget v1, p0, Landroid/media/MediaInfo;->mAlbumhash:I

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/MediaInfo;->mAlbumhash:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v5, v1

    .local v5, "selargs":[Ljava/lang/String;
    iget-boolean v1, p0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    if-eqz v1, :cond_2

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Albums;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "albumUri":Landroid/net/Uri;
    :goto_1
    iget-object v1, p0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/media/MediaInfo;->ALBUM_LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v4, "album_key=?"

    move-object v7, v6

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "c":Landroid/database/Cursor;
    move-object v6, v8

    goto :goto_0

    .end local v2    # "albumUri":Landroid/net/Uri;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    const-string v1, "phoneStorage"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Albums;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method public getFileType(Ljava/lang/String;)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    sget-boolean v4, Landroid/media/MediaInfo;->libloaded:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v1

    .local v1, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .local v0, "fileType":I
    const/16 v4, 0x15

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    const/16 v4, 0x17

    if-eq v0, v4, :cond_2

    const/16 v4, 0x18

    if-ne v0, v4, :cond_3

    :cond_2
    iget-object v4, p0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    invoke-virtual {v4}, Landroid/media/MediaInfo$MyMediaScannerClient;->reset()V

    const-string v4, ""

    iget-object v5, p0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    invoke-direct {p0, p1, v4, v5}, Landroid/media/MediaInfo;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    iget-object v4, p0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    invoke-virtual {v4}, Landroid/media/MediaInfo$MyMediaScannerClient;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    :cond_3
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    move-object v0, p1

    .local v0, "filename":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, "lastSlash":I
    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, "lastDot":I
    if-lez v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public insertDRMAudio(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "mediaTag"    # Landroid/media/MediaInfo$MediaTag;
    .param p2, "drmUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaInfo;->insertDRMAudioToMediaProvider(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public insertDRMAudioToMediaProvider(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 24
    .param p1, "mediaTag"    # Landroid/media/MediaInfo$MediaTag;
    .param p2, "drmUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "MediaInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertDRMAudioToMediaProvider drmUri= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .local v18, "path":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v6, 0x2f

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaInfo;->mAlbumhash:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v18    # "path":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p2}, Landroid/media/MediaInfo;->checkMediaTag(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v20, 0x0

    :cond_0
    :goto_1
    return-object v20

    :catch_0
    move-exception v13

    .local v13, "ex":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "filename":Ljava/lang/String;
    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "media"

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v3

    .local v3, "mediaProvider":Landroid/content/IContentProvider;
    if-nez v3, :cond_3

    const-string v4, "MediaInfo"

    const-string v6, "Can\'t acquire MediaProvider"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    if-eqz v4, :cond_7

    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .local v5, "audioUri":Landroid/net/Uri;
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    :cond_5
    const/16 v23, 0x0

    .local v23, "values":Landroid/content/ContentValues;
    const/16 v20, 0x0

    .local v20, "result":Landroid/net/Uri;
    const/4 v12, 0x0

    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    sget-object v6, Landroid/media/MediaInfo;->AUDIO_PROJECTION:[Ljava/lang/String;

    const-string v7, "_data=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    const-string v4, "MediaInfo"

    const-string v6, "Track already exists"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v20, 0x0

    .end local v20    # "result":Landroid/net/Uri;
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_6
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    const/16 v23, 0x0

    goto/16 :goto_1

    .end local v5    # "audioUri":Landroid/net/Uri;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_7
    const-string v4, "phoneStorage"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    .restart local v5    # "audioUri":Landroid/net/Uri;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "result":Landroid/net/Uri;
    .restart local v23    # "values":Landroid/content/ContentValues;
    :cond_8
    :try_start_2
    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaInfo$MediaTag;->mDrmType:I

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v16, v4, 0x1

    .local v16, "isMusic":I
    const-string v4, "MediaInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drmType= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/media/MediaInfo$MediaTag;->mDrmType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,isMusic= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaInfo;->toValues(Landroid/media/MediaInfo$MediaTag;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v4, "_data"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_ringtone"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "is_notification"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "is_alarm"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "is_music"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "is_podcast"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "album"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "album":Ljava/lang/String;
    const-string v4, "<unknown>"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v11, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .local v17, "lastSlash":I
    if-ltz v17, :cond_a

    const/16 v19, 0x0

    .local v19, "previousSlash":I
    :goto_3
    const/16 v4, 0x2f

    add-int/lit8 v6, v19, 0x1

    invoke-virtual {v11, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .local v15, "idx":I
    if-ltz v15, :cond_9

    move/from16 v0, v17

    if-lt v15, v0, :cond_e

    :cond_9
    if-eqz v19, :cond_a

    add-int/lit8 v4, v19, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v4, "album"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MediaInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Album changed from unknown to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v15    # "idx":I
    .end local v17    # "lastSlash":I
    .end local v19    # "previousSlash":I
    :cond_a
    const-wide/16 v21, 0x0

    .local v21, "rowId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v3, v4, v5, v0}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v20

    if-eqz v20, :cond_b

    invoke-static/range {v20 .. v20}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mGenre:Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v4, v1, v2}, Landroid/media/MediaInfo;->insertGenre(Ljava/lang/String;J)V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mAlbumArt:Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v4, v11, v1, v2}, Landroid/media/MediaInfo;->insertAlbumArt(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_c
    if-eqz v23, :cond_d

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .end local v11    # "album":Ljava/lang/String;
    .end local v16    # "isMusic":I
    .end local v21    # "rowId":J
    :goto_4
    const/16 v23, 0x0

    :cond_d
    const-string v4, "MediaInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertDRMAudioToMediaProvider result= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_1

    .restart local v11    # "album":Ljava/lang/String;
    .restart local v15    # "idx":I
    .restart local v16    # "isMusic":I
    .restart local v17    # "lastSlash":I
    .restart local v19    # "previousSlash":I
    :cond_e
    move/from16 v19, v15

    goto/16 :goto_3

    .end local v11    # "album":Ljava/lang/String;
    .end local v15    # "idx":I
    .end local v16    # "isMusic":I
    .end local v17    # "lastSlash":I
    .end local v19    # "previousSlash":I
    :catch_1
    move-exception v13

    .local v13, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "MediaInfo"

    const-string v6, "updateDRMAudio RemoteException "

    invoke-static {v4, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_f
    if-eqz v23, :cond_d

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    goto :goto_4

    .end local v13    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_10

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_10
    if-eqz v23, :cond_11

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    const/16 v23, 0x0

    :cond_11
    throw v4
.end method

.method isDRMAudioMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeThumb(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v17, 0x0

    .local v17, "thumbName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "media"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v11

    .local v11, "mediaProvider":Landroid/content/IContentProvider;
    if-nez v11, :cond_0

    const-string v18, "MediaInfo"

    const-string v19, "Can\'t acquire MediaProvider"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    .end local v11    # "mediaProvider":Landroid/content/IContentProvider;
    :goto_0
    return-object v18

    .restart local v11    # "mediaProvider":Landroid/content/IContentProvider;
    :cond_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "f":Ljava/io/File;
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-static {v9, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .local v14, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v14, :cond_1

    const-string v18, "MediaInfo"

    const-string v19, "Can\'t parcel file"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    new-instance v15, Landroid/media/MediaScanner;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .local v15, "scanner":Landroid/media/MediaScanner;
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B

    move-result-object v4

    .local v4, "art":[B
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    .local v5, "bm":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    :try_start_1
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v12, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_1
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    const/16 v19, 0x140

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    const/16 v19, 0x140

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    :cond_2
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .end local v12    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const-string v18, "MediaInfo"

    const-string v19, "makeThumb - fail to makeThumb"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v18

    if-nez v18, :cond_4

    sget-object v18, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_5

    const/16 v16, 0x0

    .local v16, "success":Z
    const/16 v18, 0x0

    :try_start_3
    const-string v19, ""

    const-string v20, "Android/data/com.android.providers.media/albumthumbs"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaInfo;->generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "bmpfilename":Ljava/lang/String;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v13, "outstream":Ljava/io/OutputStream;
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x4b

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v16

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    if-nez v16, :cond_7

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v9    # "f":Ljava/io/File;
    .local v10, "f":Ljava/io/File;
    :try_start_4
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v9, v10

    .end local v6    # "bmpfilename":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    .end local v13    # "outstream":Ljava/io/OutputStream;
    .restart local v9    # "f":Ljava/io/File;
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/media/MediaInfo;->MEDIA_URI:Landroid/net/Uri;

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v4    # "art":[B
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    .end local v9    # "f":Ljava/io/File;
    .end local v11    # "mediaProvider":Landroid/content/IContentProvider;
    .end local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "scanner":Landroid/media/MediaScanner;
    .end local v16    # "success":Z
    :cond_5
    :goto_4
    move-object/from16 v18, v17

    goto/16 :goto_0

    .restart local v4    # "art":[B
    .restart local v5    # "bm":Landroid/graphics/Bitmap;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v11    # "mediaProvider":Landroid/content/IContentProvider;
    .restart local v12    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "scanner":Landroid/media/MediaScanner;
    :cond_6
    const/16 v18, 0x0

    :try_start_6
    move/from16 v0, v18

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v18, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    iput-object v0, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v5

    goto :goto_2

    .end local v12    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "bmpfilename":Ljava/lang/String;
    .restart local v13    # "outstream":Ljava/io/OutputStream;
    .restart local v16    # "success":Z
    :cond_7
    move-object/from16 v17, v6

    goto :goto_3

    .end local v6    # "bmpfilename":Ljava/lang/String;
    .end local v13    # "outstream":Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    const-string v18, "MediaInfo"

    const-string v19, "error creating file"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v4    # "art":[B
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    .end local v8    # "ex":Ljava/io/FileNotFoundException;
    .end local v9    # "f":Ljava/io/File;
    .end local v11    # "mediaProvider":Landroid/content/IContentProvider;
    .end local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "scanner":Landroid/media/MediaScanner;
    .end local v16    # "success":Z
    :catch_2
    move-exception v18

    goto :goto_4

    .restart local v4    # "art":[B
    .restart local v5    # "bm":Landroid/graphics/Bitmap;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v11    # "mediaProvider":Landroid/content/IContentProvider;
    .restart local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "scanner":Landroid/media/MediaScanner;
    .restart local v16    # "success":Z
    :catch_3
    move-exception v8

    .local v8, "ex":Ljava/io/IOException;
    :goto_6
    const-string v18, "MediaInfo"

    const-string v19, "error creating file"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "f":Ljava/io/File;
    .restart local v6    # "bmpfilename":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    .restart local v13    # "outstream":Ljava/io/OutputStream;
    :catch_4
    move-exception v8

    move-object v9, v10

    .end local v10    # "f":Ljava/io/File;
    .restart local v9    # "f":Ljava/io/File;
    goto :goto_6

    .end local v9    # "f":Ljava/io/File;
    .restart local v10    # "f":Ljava/io/File;
    :catch_5
    move-exception v8

    move-object v9, v10

    .end local v10    # "f":Ljava/io/File;
    .restart local v9    # "f":Ljava/io/File;
    goto :goto_5
.end method

.method public parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;
    .locals 19
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-boolean v2, Landroid/media/MediaInfo;->libloaded:Z

    if-nez v2, :cond_0

    const-string v2, "MediaInfo"

    const-string v3, "parseSingleFile lib not loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "zh"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/media/MediaInfo;->setLocale(Ljava/lang/String;)V

    const-string v2, "/cache/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    .local v18, "status":Ljava/lang/String;
    const-string v2, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    .end local v18    # "status":Ljava/lang/String;
    :goto_1
    const-string v2, "MediaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseSingleFile path= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mIsSDSrc: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v13, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/media/MediaInfo$MyMediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v4, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .local v4, "album":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v5, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .local v5, "artist":Ljava/lang/String;
    move-object/from16 v14, p1

    .local v14, "filename":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .local v16, "lastSlash":I
    if-ltz v16, :cond_1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .local v15, "lastDot":I
    if-lez v15, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v4, "<unknown>"

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v5, "<unknown>"

    :cond_4
    new-instance v1, Landroid/media/MediaInfo$MediaTag;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v3, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-wide v7, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mLastModified:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-wide v9, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mFileSize:J

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v10}, Landroid/media/MediaInfo$MediaTag;-><init>(Landroid/media/MediaInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .local v1, "mediaTag":Landroid/media/MediaInfo$MediaTag;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v2, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v2, v1, Landroid/media/MediaInfo$MediaTag;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v2, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    iput-object v2, v1, Landroid/media/MediaInfo$MediaTag;->mComposer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v2, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    iput-object v2, v1, Landroid/media/MediaInfo$MediaTag;->mGenre:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v2, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    iput-object v2, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget v2, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mFileType:I

    iput v2, v1, Landroid/media/MediaInfo$MediaTag;->mFileType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget v2, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mYear:I

    iput v2, v1, Landroid/media/MediaInfo$MediaTag;->mYear:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget v2, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mDuration:I

    iput v2, v1, Landroid/media/MediaInfo$MediaTag;->mDuration:I

    iput-object v14, v1, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget v2, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mTrack:I

    iput v2, v1, Landroid/media/MediaInfo$MediaTag;->mTrack:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v2, v2, Landroid/media/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v6, v6, Landroid/media/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "album= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "artist= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastModified= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-wide v6, v6, Landroid/media/MediaInfo$MyMediaScannerClient;->mLastModified:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFileSize= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-wide v6, v6, Landroid/media/MediaInfo$MyMediaScannerClient;->mFileSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAlbumArtist= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v6, v6, Landroid/media/MediaInfo$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGenre= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v6, v6, Landroid/media/MediaInfo$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMimeType= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget-object v6, v6, Landroid/media/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFileType= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget v6, v6, Landroid/media/MediaInfo$MyMediaScannerClient;->mFileType:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mYear= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget v6, v6, Landroid/media/MediaInfo$MyMediaScannerClient;->mYear:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDuration= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget v6, v6, Landroid/media/MediaInfo$MyMediaScannerClient;->mDuration:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFilename= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTrack= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaInfo;->mClient:Landroid/media/MediaInfo$MyMediaScannerClient;

    iget v6, v6, Landroid/media/MediaInfo$MyMediaScannerClient;->mTrack:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .local v11, "albumArt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "media"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v17

    .local v17, "mediaProvider":Landroid/content/IContentProvider;
    if-nez v17, :cond_9

    const-string v2, "MediaInfo"

    const-string v3, "Can\'t acquire MediaProvider"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v1    # "mediaTag":Landroid/media/MediaInfo$MediaTag;
    .end local v4    # "album":Ljava/lang/String;
    .end local v5    # "artist":Ljava/lang/String;
    .end local v11    # "albumArt":Ljava/lang/String;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v15    # "lastDot":I
    .end local v16    # "lastSlash":I
    .end local v17    # "mediaProvider":Landroid/content/IContentProvider;
    .restart local v18    # "status":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    goto/16 :goto_1

    .end local v18    # "status":Ljava/lang/String;
    :cond_7
    const-string v2, "/data/drm/rights/PHONE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    goto/16 :goto_1

    .restart local v1    # "mediaTag":Landroid/media/MediaInfo$MediaTag;
    .restart local v4    # "album":Ljava/lang/String;
    .restart local v5    # "artist":Ljava/lang/String;
    .restart local v11    # "albumArt":Ljava/lang/String;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "filename":Ljava/lang/String;
    .restart local v15    # "lastDot":I
    .restart local v16    # "lastSlash":I
    .restart local v17    # "mediaProvider":Landroid/content/IContentProvider;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .local v12, "c":Landroid/database/Cursor;
    if-eqz v12, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaInfo;->makeThumb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_a
    :goto_2
    if-eqz v12, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_b
    :goto_3
    iput-object v11, v1, Landroid/media/MediaInfo$MediaTag;->mAlbumArt:Ljava/lang/String;

    const-string v2, "@@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAlbumArt= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Landroid/media/MediaInfo$MediaTag;->mAlbumArt:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "album_art"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_a

    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaInfo;->makeThumb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_d
    const-string v2, "MediaInfo"

    const-string v3, "parseSingleFile()..c is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setup()V
    .locals 1

    .prologue
    sget-boolean v0, Landroid/media/MediaInfo;->libloaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/media/MediaInfo;->native_setup()V

    goto :goto_0
.end method

.method public updateDRMAudio(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 18
    .param p1, "mediaTag"    # Landroid/media/MediaInfo$MediaTag;
    .param p2, "drmUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "MediaInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDRMAudio drmUri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p2}, Landroid/media/MediaInfo;->checkMediaTag(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, "path":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v4, 0x2f

    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v13, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaInfo;->mAlbumhash:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "path":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/MediaInfo;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "filename":Ljava/lang/String;
    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "media"

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    .local v1, "mediaProvider":Landroid/content/IContentProvider;
    if-nez v1, :cond_2

    const-string v2, "MediaInfo"

    const-string v4, "Can\'t acquire MediaProvider"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    .end local v1    # "mediaProvider":Landroid/content/IContentProvider;
    .end local v12    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v11    # "ex":Ljava/lang/Exception;
    .restart local v1    # "mediaProvider":Landroid/content/IContentProvider;
    .restart local v12    # "filename":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaInfo;->mIsSDSrc:Z

    if-eqz v2, :cond_6

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "audioUri":Landroid/net/Uri;
    :goto_2
    const/16 v16, 0x0

    .local v16, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .local v10, "cursor":Landroid/database/Cursor;
    const/16 v17, 0x0

    .local v17, "values":Landroid/content/ContentValues;
    const-wide/16 v14, 0x0

    .local v14, "rowId":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    sget-object v4, Landroid/media/MediaInfo;->AUDIO_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_4
    const-string v2, "MediaInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find the record, uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_5
    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    const/4 v7, 0x0

    .end local v17    # "values":Landroid/content/ContentValues;
    .local v7, "values":Landroid/content/ContentValues;
    goto/16 :goto_0

    .end local v3    # "audioUri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "rowId":J
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_6
    const-string v2, "phoneStorage"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    .restart local v3    # "audioUri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "rowId":J
    .restart local v16    # "uri":Landroid/net/Uri;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_7
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .end local v16    # "uri":Landroid/net/Uri;
    .local v6, "uri":Landroid/net/Uri;
    :try_start_3
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaInfo;->toValues(Landroid/media/MediaInfo$MediaTag;)Landroid/content/ContentValues;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .end local v17    # "values":Landroid/content/ContentValues;
    .restart local v7    # "values":Landroid/content/ContentValues;
    :try_start_4
    const-string v2, "_data"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/MediaInfo$MediaTag;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaInfo;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/MediaInfo$MediaTag;->mGenre:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, Landroid/media/MediaInfo;->insertGenre(Ljava/lang/String;J)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/MediaInfo$MediaTag;->mAlbumArt:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v14, v15}, Landroid/media/MediaInfo;->insertAlbumArt(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    :goto_3
    const/4 v7, 0x0

    :cond_b
    const/4 v1, 0x0

    const-string v2, "MediaInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDRMAudio uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .restart local v16    # "uri":Landroid/net/Uri;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    move-object/from16 v7, v17

    .end local v17    # "values":Landroid/content/ContentValues;
    .restart local v7    # "values":Landroid/content/ContentValues;
    move-object/from16 v6, v16

    .end local v16    # "uri":Landroid/net/Uri;
    .restart local v6    # "uri":Landroid/net/Uri;
    .local v11, "ex":Landroid/os/RemoteException;
    :goto_4
    :try_start_5
    const-string v2, "MediaInfo"

    const-string v4, "updateDRMAudio RemoteException "

    invoke-static {v2, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_c
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    goto :goto_3

    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v11    # "ex":Landroid/os/RemoteException;
    .restart local v16    # "uri":Landroid/net/Uri;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    move-object/from16 v7, v17

    .end local v17    # "values":Landroid/content/ContentValues;
    .restart local v7    # "values":Landroid/content/ContentValues;
    move-object/from16 v6, v16

    .end local v16    # "uri":Landroid/net/Uri;
    .restart local v6    # "uri":Landroid/net/Uri;
    :goto_5
    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    const/4 v7, 0x0

    :cond_e
    throw v2

    .end local v7    # "values":Landroid/content/ContentValues;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    move-object/from16 v7, v17

    .end local v17    # "values":Landroid/content/ContentValues;
    .restart local v7    # "values":Landroid/content/ContentValues;
    goto :goto_5

    :catchall_2
    move-exception v2

    goto :goto_5

    .end local v7    # "values":Landroid/content/ContentValues;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v11

    move-object/from16 v7, v17

    .end local v17    # "values":Landroid/content/ContentValues;
    .restart local v7    # "values":Landroid/content/ContentValues;
    goto :goto_4

    :catch_3
    move-exception v11

    goto :goto_4

    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .restart local v16    # "uri":Landroid/net/Uri;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_f
    move-object/from16 v7, v17

    .local v7, "values":Ljava/lang/Object;
    goto/16 :goto_0
.end method
