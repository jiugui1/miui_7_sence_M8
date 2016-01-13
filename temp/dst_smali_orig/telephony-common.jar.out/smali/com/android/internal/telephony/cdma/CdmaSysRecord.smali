.class public Lcom/android/internal/telephony/cdma/CdmaSysRecord;
.super Ljava/lang/Object;
.source "CdmaSysRecord.java"


# instance fields
.field public bsid:I

.field public nid:I

.field public sid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "sid"    # I
    .param p2, "nid"    # I
    .param p3, "bsid"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSysRecord;->sid:I

    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaSysRecord;->nid:I

    iput p3, p0, Lcom/android/internal/telephony/cdma/CdmaSysRecord;->bsid:I

    return-void
.end method
