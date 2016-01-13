.class public Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;
.super Ljava/lang/Exception;
.source "HtcIccPbkEntryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IccPbkException"
.end annotation


# instance fields
.field public mError:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 2924
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2925
    iput p1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache$IccPbkException;->mError:I

    .line 2926
    return-void
.end method
