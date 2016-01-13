.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected appendFilePath(I)I
    .locals 5
    .param p1, "efid"    # I

    .prologue
    .line 124
    move v1, p1

    .line 125
    .local v1, "newEfid":I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->isCommonIccFile(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x6f31

    if-ne p1, v3, :cond_0

    .line 128
    const-string v3, "7F25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "fileid":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 134
    .end local v0    # "fileid":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return v1
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "efid"    # I

    .prologue
    const/4 v2, 0x2

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_9

    const/16 v1, 0x2fe2

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_9

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    .line 118
    .end local v0    # "path":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 41
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3F007F43"

    goto :goto_0

    :cond_1
    const-string v1, "7F43"

    goto :goto_0

    .line 45
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3F007FFF5F50"

    goto :goto_0

    :cond_2
    const-string v1, "7FFF5F50"

    goto :goto_0

    .line 70
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "3F007FFF"

    goto :goto_0

    :cond_3
    const-string v1, "7FFF"

    goto :goto_0

    .line 72
    :sswitch_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "3F00"

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :sswitch_4
    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v2, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 79
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    const-string v1, "7F10"

    goto :goto_0

    .line 82
    :cond_6
    const-string v1, "3F007F10"

    goto :goto_0

    .line 92
    :sswitch_5
    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v2, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 94
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 95
    const-string v1, "7F20"

    goto :goto_0

    .line 97
    :cond_8
    const-string v1, "3F007F20"

    goto :goto_0

    .line 105
    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    .restart local v0    # "path":Ljava/lang/String;
    :cond_9
    move-object v1, v0

    .line 118
    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f00 -> :sswitch_3
        0x4f22 -> :sswitch_6
        0x4f23 -> :sswitch_6
        0x4f24 -> :sswitch_6
        0x4f30 -> :sswitch_6
        0x4f84 -> :sswitch_1
        0x6f02 -> :sswitch_0
        0x6f05 -> :sswitch_2
        0x6f11 -> :sswitch_5
        0x6f13 -> :sswitch_5
        0x6f14 -> :sswitch_5
        0x6f15 -> :sswitch_5
        0x6f16 -> :sswitch_5
        0x6f17 -> :sswitch_5
        0x6f18 -> :sswitch_5
        0x6f38 -> :sswitch_2
        0x6f3b -> :sswitch_4
        0x6f3c -> :sswitch_2
        0x6f3e -> :sswitch_2
        0x6f40 -> :sswitch_2
        0x6f45 -> :sswitch_2
        0x6f46 -> :sswitch_2
        0x6f49 -> :sswitch_4
        0x6f4b -> :sswitch_4
        0x6f4c -> :sswitch_4
        0x6f4e -> :sswitch_2
        0x6f50 -> :sswitch_2
        0x6f60 -> :sswitch_2
        0x6f62 -> :sswitch_2
        0x6f7b -> :sswitch_2
        0x6fad -> :sswitch_2
        0x6fc5 -> :sswitch_2
        0x6fc6 -> :sswitch_2
        0x6fc7 -> :sswitch_2
        0x6fc8 -> :sswitch_2
        0x6fc9 -> :sswitch_2
        0x6fca -> :sswitch_2
        0x6fcb -> :sswitch_2
        0x6fcd -> :sswitch_2
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method
