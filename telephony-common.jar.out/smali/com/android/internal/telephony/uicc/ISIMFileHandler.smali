.class public final Lcom/android/internal/telephony/uicc/ISIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "ISIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 33
    sput-object p2, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/HtcIsimData;->setIsimFh(Lcom/android/internal/telephony/uicc/ISIMFileHandler;)V

    .line 35
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/HtcIsimData;->setIsimFh(Lcom/android/internal/telephony/uicc/ISIMFileHandler;)V

    .line 40
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 41
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "IsimFH"

    const-string v1, "ISIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 50
    sparse-switch p1, :sswitch_data_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/ISIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f02 -> :sswitch_0
        0x6f03 -> :sswitch_0
        0x6f04 -> :sswitch_0
        0x6f07 -> :sswitch_0
        0x6f09 -> :sswitch_0
        0x6fd5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "IsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "IsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method
