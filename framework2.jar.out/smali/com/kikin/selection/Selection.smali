.class public Lcom/kikin/selection/Selection;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/selection/Selection$Mode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kikin/selection/Selection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlt:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mH1:Ljava/lang/String;

.field private mH2:Ljava/lang/String;

.field private mHl:Ljava/lang/String;

.field private mHref:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mMode:Lcom/kikin/selection/Selection$Mode;

.field private mPosthl:Ljava/lang/String;

.field private mPrehl:Ljava/lang/String;

.field private mReferrer:Ljava/lang/String;

.field private mSelectionLanguage:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTouchedWord:Ljava/lang/String;

.field private mType:Lcom/kikin/selection/SelectionType;

.field private mUrl:Landroid/net/Uri;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lcom/kikin/selection/Selection$1;

    invoke-direct {v0}, Lcom/kikin/selection/Selection$1;-><init>()V

    sput-object v0, Lcom/kikin/selection/Selection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 35
    sget-object v0, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 42
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 49
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "selection"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v3, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 35
    sget-object v3, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 42
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 43
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 44
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 45
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 46
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    .line 47
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 48
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 49
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 50
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 57
    const-string v3, "mode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "selectionMode":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/kikin/selection/Selection$Mode;->valueOf(Ljava/lang/String;)Lcom/kikin/selection/Selection$Mode;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 59
    const-string v3, "content"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 60
    const-string v3, "selection"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 61
    const-string v3, "textBeforeSelection"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 62
    const-string v3, "textAfterSelection"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 64
    const-string v3, "selectionType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "selectionType":Ljava/lang/String;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v2}, Lcom/kikin/selection/SelectionType;->valueOf(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_2
    const-string v3, "selectionLanguage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 71
    const-string v3, "touchedWord"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 73
    const-string v3, "keywords"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 74
    const-string v3, "title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 75
    const-string v3, "h1"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 76
    const-string v3, "h2"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 77
    const-string v3, "referrer"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    .line 78
    const-string v3, "tag"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 79
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 80
    const-string v3, "alt"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 81
    const-string v3, "href"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 82
    const-string v3, "value"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 84
    const-string v3, "extras"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mExtras:Landroid/os/Bundle;

    .line 85
    return-void

    .line 58
    .end local v2    # "selectionType":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    goto/16 :goto_0

    .line 66
    .restart local v2    # "selectionType":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    goto :goto_2
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v2, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 35
    sget-object v2, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 42
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 49
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 50
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/kikin/selection/Selection$Mode;->valueOf(Ljava/lang/String;)Lcom/kikin/selection/Selection$Mode;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/kikin/selection/SelectionType;->valueOf(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mExtras:Landroid/os/Bundle;

    .line 436
    return-void

    .line 416
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    goto/16 :goto_0

    .line 422
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kikin/selection/Selection$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/kikin/selection/Selection$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/kikin/selection/Selection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "textBeforeSelection"    # Ljava/lang/String;
    .param p4, "textAfterSelection"    # Ljava/lang/String;
    .param p5, "selectionType"    # Ljava/lang/String;
    .param p6, "selectionLanguage"    # Ljava/lang/String;
    .param p7, "touchedWord"    # Ljava/lang/String;
    .param p8, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 35
    sget-object v0, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 42
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 49
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 93
    invoke-static {p5}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 94
    iput-object p6, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 95
    iput-object p7, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 96
    iput-object p8, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "textBeforeSelection"    # Ljava/lang/String;
    .param p4, "textAfterSelection"    # Ljava/lang/String;
    .param p5, "selectionType"    # Ljava/lang/String;
    .param p6, "selectionLanguage"    # Ljava/lang/String;
    .param p7, "touchedWord"    # Ljava/lang/String;
    .param p8, "keywords"    # Ljava/lang/String;
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "h1TagText"    # Ljava/lang/String;
    .param p11, "h2TagText"    # Ljava/lang/String;
    .param p12, "tagName"    # Ljava/lang/String;
    .param p13, "alt"    # Ljava/lang/String;
    .param p14, "href"    # Ljava/lang/String;
    .param p15, "value"    # Ljava/lang/String;
    .param p16, "referrer"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v1, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 35
    sget-object v1, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 108
    invoke-static {p5}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 109
    iput-object p6, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 110
    iput-object p7, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 111
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 113
    if-eqz p8, :cond_0

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .end local p8    # "keywords":Ljava/lang/String;
    :goto_0
    iput-object p8, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 114
    if-eqz p9, :cond_1

    invoke-virtual {p9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p9    # "title":Ljava/lang/String;
    :goto_1
    iput-object p9, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 115
    if-eqz p10, :cond_2

    invoke-virtual {p10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .end local p10    # "h1TagText":Ljava/lang/String;
    :goto_2
    iput-object p10, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 116
    if-eqz p11, :cond_3

    invoke-virtual {p11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .end local p11    # "h2TagText":Ljava/lang/String;
    :goto_3
    iput-object p11, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 117
    if-eqz p16, :cond_4

    invoke-virtual/range {p16 .. p16}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .end local p16    # "referrer":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    .line 118
    if-eqz p12, :cond_5

    invoke-virtual {p12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .end local p12    # "tagName":Ljava/lang/String;
    :goto_5
    iput-object p12, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 119
    if-eqz p13, :cond_6

    invoke-virtual {p13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .end local p13    # "alt":Ljava/lang/String;
    :goto_6
    iput-object p13, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 120
    if-eqz p14, :cond_7

    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .end local p14    # "href":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 121
    return-void

    .line 113
    .restart local p8    # "keywords":Ljava/lang/String;
    .restart local p9    # "title":Ljava/lang/String;
    .restart local p10    # "h1TagText":Ljava/lang/String;
    .restart local p11    # "h2TagText":Ljava/lang/String;
    .restart local p12    # "tagName":Ljava/lang/String;
    .restart local p13    # "alt":Ljava/lang/String;
    .restart local p14    # "href":Ljava/lang/String;
    .restart local p16    # "referrer":Ljava/lang/String;
    :cond_0
    const/4 p8, 0x0

    goto :goto_0

    .line 114
    .end local p8    # "keywords":Ljava/lang/String;
    :cond_1
    const/4 p9, 0x0

    goto :goto_1

    .line 115
    .end local p9    # "title":Ljava/lang/String;
    :cond_2
    const/4 p10, 0x0

    goto :goto_2

    .line 116
    .end local p10    # "h1TagText":Ljava/lang/String;
    :cond_3
    const/4 p11, 0x0

    goto :goto_3

    .line 117
    .end local p11    # "h2TagText":Ljava/lang/String;
    :cond_4
    const/16 p16, 0x0

    goto :goto_4

    .line 118
    .end local p16    # "referrer":Ljava/lang/String;
    :cond_5
    const/4 p12, 0x0

    goto :goto_5

    .line 119
    .end local p12    # "tagName":Ljava/lang/String;
    :cond_6
    const/4 p13, 0x0

    goto :goto_6

    .line 120
    .end local p13    # "alt":Ljava/lang/String;
    :cond_7
    const/16 p14, 0x0

    goto :goto_7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 310
    instance-of v2, p1, Lcom/kikin/selection/Selection;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 311
    check-cast v0, Lcom/kikin/selection/Selection;

    .line 312
    .local v0, "selection":Lcom/kikin/selection/Selection;
    invoke-virtual {v0}, Lcom/kikin/selection/Selection;->getHl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/kikin/selection/Selection;->getHl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v0}, Lcom/kikin/selection/Selection;->getType()Lcom/kikin/selection/SelectionType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 316
    .end local v0    # "selection":Lcom/kikin/selection/Selection;
    :cond_0
    return v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getH1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    return-object v0
.end method

.method public getH2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    return-object v0
.end method

.method public getHl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lcom/kikin/selection/Selection$Mode;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    return-object v0
.end method

.method public getPosthl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrehl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionType()Lcom/kikin/selection/SelectionType;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/kikin/selection/SelectionType;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mExtras:Landroid/os/Bundle;

    .line 167
    return-void
.end method

.method public setH1(Ljava/lang/String;)V
    .locals 1
    .param p1, "h1"    # Ljava/lang/String;

    .prologue
    .line 218
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1    # "h1":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 219
    return-void

    .line 218
    .restart local p1    # "h1":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setH2(Ljava/lang/String;)V
    .locals 1
    .param p1, "h2"    # Ljava/lang/String;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1    # "h2":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 227
    return-void

    .line 226
    .restart local p1    # "h2":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setHl(Ljava/lang/String;)V
    .locals 0
    .param p1, "hl"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1    # "keywords":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 251
    return-void

    .line 250
    .restart local p1    # "keywords":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setMode(Lcom/kikin/selection/Selection$Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/kikin/selection/Selection$Mode;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 183
    return-void
.end method

.method public setPosthl(Ljava/lang/String;)V
    .locals 0
    .param p1, "posthl"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setPrehl(Ljava/lang/String;)V
    .locals 0
    .param p1, "prehl"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1    # "referrer":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    .line 235
    return-void

    .line 234
    .restart local p1    # "referrer":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setSelectionLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setSelectionType(Lcom/kikin/selection/SelectionType;)V
    .locals 0
    .param p1, "type"    # Lcom/kikin/selection/SelectionType;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 195
    return-void
.end method

.method public setSelectionType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p1}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 199
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 274
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1    # "tag":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 275
    return-void

    .line 274
    .restart local p1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 290
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1    # "title":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 291
    return-void

    .line 290
    .restart local p1    # "title":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setTouchedWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "touchedWord"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setUrl(Landroid/net/Uri;)V
    .locals 0
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 299
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mode"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v2}, Lcom/kikin/selection/Selection$Mode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v1, "content"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "selection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "textBeforeSelection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "textAfterSelection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "selectionType"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v2}, Lcom/kikin/selection/SelectionType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "selectionLanguage"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "touchedWord"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "keywords"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "title"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "h1"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v1, "h2"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v1, "referrer"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "tag"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "url"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 364
    const-string v1, "alt"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "href"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "value"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v1, "extras"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 369
    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 323
    .local v1, "ret":Lorg/json/JSONObject;
    const-string v2, "mode"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v3}, Lcom/kikin/selection/Selection$Mode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 327
    .local v0, "data":Lorg/json/JSONObject;
    const-string v2, "text"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string v2, "hl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v2, "prehl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v2, "posthl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v2, "tw"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v2, "h1"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v2, "h2"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v2, "referrer"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v2, "tag"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v2, "title"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v2, "keywords"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v2, "alt"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v2, "href"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v2, "ul"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v2, "type"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v3}, Lcom/kikin/selection/SelectionType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "Content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, "\nSelection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, "\nPre text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, "\nPost text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v1, "\nType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, "\nLanguage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v1, "\nTouched word:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v1, "\nKeywords:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v1, "\nTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v1, "\nH1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v1, "\nH2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, "\nReferrer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v1, "\nTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, "\nAlt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v1, "\nHref:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v1, "\nMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 157
    const-string v1, "\nUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 159
    const-string v1, "\nextras:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v0}, Lcom/kikin/selection/Selection$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v0}, Lcom/kikin/selection/SelectionType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mReferrer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 398
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 402
    return-void
.end method
