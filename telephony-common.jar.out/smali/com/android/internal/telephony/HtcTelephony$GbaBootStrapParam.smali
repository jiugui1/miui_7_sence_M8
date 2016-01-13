.class public Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;
.super Ljava/lang/Object;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GbaBootStrapParam"
.end annotation


# instance fields
.field public mData:[B

.field public mEfid:I

.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephony;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/HtcTelephony;I[B)V
    .locals 0
    .param p2, "mEfid"    # I
    .param p3, "mData"    # [B

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    iput p2, p0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->mEfid:I

    .line 1428
    iput-object p3, p0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->mData:[B

    .line 1429
    return-void
.end method
