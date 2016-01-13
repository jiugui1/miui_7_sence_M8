.class public Lcom/android/internal/telephony/HtcMsgConfig;
.super Ljava/lang/Object;
.source "HtcMsgConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAPTG()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAptgProject()Z

    move-result v0

    return v0
.end method

.method public static isDetectDataActivityAndCallStateForMoSms()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiDetectDataActivityCallstateForMoSms()Z

    move-result v0

    return v0
.end method

.method public static isQmiProject()Z
    .locals 2

    .prologue
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiMoPacketSms()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiMoPacketSms()Z

    move-result v0

    return v0
.end method
