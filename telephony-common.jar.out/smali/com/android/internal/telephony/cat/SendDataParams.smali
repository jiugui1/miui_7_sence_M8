.class Lcom/android/internal/telephony/cat/SendDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannel:I

.field mData:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I[B)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "channel"    # I
    .param p3, "data"    # [B

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mData:[B

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannel:I

    .line 247
    iput p2, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannel:I

    .line 248
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mData:[B

    .line 249
    return-void
.end method
