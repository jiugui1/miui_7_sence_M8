.class Lcom/android/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannel:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "channel"    # I

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannel:I

    .line 226
    iput p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannel:I

    .line 227
    return-void
.end method
