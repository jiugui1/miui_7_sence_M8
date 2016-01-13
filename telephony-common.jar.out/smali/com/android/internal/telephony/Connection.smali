.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIfConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$CliValid;,
        Lcom/android/internal/telephony/Connection$DisconnectCause;
    }
.end annotation


# static fields
.field public static final CODEC_AMR_NB_V02:Ljava/lang/String; = "AMR-NB"

.field public static final CODEC_AMR_WB_V02:Ljava/lang/String; = "AMR-WB"

.field public static final CODEC_DEFAULT:Ljava/lang/String; = "UNKNOWN"

.field public static final CODEC_EVRC_B_V02:Ljava/lang/String; = "EVRC-B"

.field public static final CODEC_EVRC_NW_V02:Ljava/lang/String; = "EVRC-NW"

.field public static final CODEC_EVRC_V02:Ljava/lang/String; = "EVRC"

.field public static final CODEC_EVRC_WB_V02:Ljava/lang/String; = "EVRC-WB"

.field public static final CODEC_GSM_EFR_V02:Ljava/lang/String; = "GSM-EFR"

.field public static final CODEC_GSM_FR_V02:Ljava/lang/String; = "GSM-FR"

.field public static final CODEC_GSM_HR_V02:Ljava/lang/String; = "GSM-HR"

.field public static final CODEC_NONE_V02:Ljava/lang/String; = "NONE"

.field public static final CODEC_QCELP13K_V02:Ljava/lang/String; = "QCELP13K"

.field public static final CODEC_SPRINT_VOICE_HD:Ljava/lang/String; = "SPRINT-VOICE-HD"

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final SPEECH_CODEC_KEY:Ljava/lang/String; = "Codec"

.field public static final VOICE_SPEECH_CODEC_AMR_NB_V02:I = 0x6

.field public static final VOICE_SPEECH_CODEC_AMR_WB_V02:I = 0x7

.field public static final VOICE_SPEECH_CODEC_DEFAULT:I = -0x1

.field public static final VOICE_SPEECH_CODEC_EVRC_B_V02:I = 0x3

.field public static final VOICE_SPEECH_CODEC_EVRC_NW_V02:I = 0x5

.field public static final VOICE_SPEECH_CODEC_EVRC_V02:I = 0x2

.field public static final VOICE_SPEECH_CODEC_EVRC_WB_V02:I = 0x4

.field public static final VOICE_SPEECH_CODEC_GSM_EFR_V02:I = 0x8

.field public static final VOICE_SPEECH_CODEC_GSM_FR_V02:I = 0x9

.field public static final VOICE_SPEECH_CODEC_GSM_HR_V02:I = 0xa

.field public static final VOICE_SPEECH_CODEC_KEY:Ljava/lang/String; = "CALL_CODEC"

.field public static final VOICE_SPEECH_CODEC_NONE_V02:I = 0x0

.field public static final VOICE_SPEECH_CODEC_QCELP13K_V02:I = 0x1

.field public static final VOICE_SPEECH_CODEC_SPRINT_VOICE_HD:I = 0x1000


# instance fields
.field public callDetails:Lcom/android/internal/telephony/CallDetails;

.field public callModifyRequest:Lcom/android/internal/telephony/CallModify;

.field public errorInfo:Ljava/lang/String;

.field isCollided:Z

.field protected mCnapName:Ljava/lang/String;

.field protected mCnapNamePresentation:I

.field public mHasUpdatedCallLog:Z

.field private mMapUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFirewallCode:I

.field mUserData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "Connection"

    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mFirewallCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 32
    new-instance v0, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->isCollided:Z

    return-void
.end method

.method public static convertVoiceSpeechCodecToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "codec"    # I

    .prologue
    .line 659
    sparse-switch p0, :sswitch_data_0

    .line 685
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 661
    :sswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 663
    :sswitch_1
    const-string v0, "QCELP13K"

    goto :goto_0

    .line 665
    :sswitch_2
    const-string v0, "EVRC"

    goto :goto_0

    .line 667
    :sswitch_3
    const-string v0, "EVRC-B"

    goto :goto_0

    .line 669
    :sswitch_4
    const-string v0, "EVRC-WB"

    goto :goto_0

    .line 671
    :sswitch_5
    const-string v0, "EVRC-NW"

    goto :goto_0

    .line 673
    :sswitch_6
    const-string v0, "AMR-NB"

    goto :goto_0

    .line 675
    :sswitch_7
    const-string v0, "AMR-WB"

    goto :goto_0

    .line 677
    :sswitch_8
    const-string v0, "GSM-EFR"

    goto :goto_0

    .line 679
    :sswitch_9
    const-string v0, "GSM-FR"

    goto :goto_0

    .line 681
    :sswitch_a
    const-string v0, "GSM-HR"

    goto :goto_0

    .line 683
    :sswitch_b
    const-string v0, "SPRINT-VOICE-HD"

    goto :goto_0

    .line 659
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x1000 -> :sswitch_b
    .end sparse-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 724
    sget-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void
.end method


# virtual methods
.method public abstract FWIMReceived()Z
.end method

.method public addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract cancelPostDial()V
.end method

.method public clearUserData()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 370
    return-void
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getCCWT()Z
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallDetails()Lcom/android/internal/telephony/CallDetails;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    return-object v0
.end method

.method public getCallDetailsExtraValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->getExtras()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallDetailsExtras()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallDetails;->getExtras()[Ljava/lang/String;

    move-result-object v0

    .line 639
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getCallDurationMillis()J
.end method

.method public getCallModify()Lcom/android/internal/telephony/CallModify;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    return-object v0
.end method

.method public abstract getCliValid()Lcom/android/internal/telephony/Connection$CliValid;
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v0
.end method

.method public abstract getConnectTime()J
.end method

.method public abstract getCreateTime()J
.end method

.method public abstract getDialString()Ljava/lang/String;
.end method

.method public abstract getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
.end method

.method public abstract getDisconnectTime()J
.end method

.method public abstract getDurationMillis()J
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getFWIMTime()J
.end method

.method public getHasUpdatedCallLog()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mHasUpdatedCallLog:Z

    return v0
.end method

.method public getFirewallCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mFirewallCode:I

    return v0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public getIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMapUserData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    return-object v0
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
.end method

.method public abstract getRawDisconnectCause()I
.end method

.method public abstract getRawDisonnectCause()I
.end method

.method public abstract getRemainingPostDialString()Ljava/lang/String;
.end method

.method public getRingDurationMillis()J
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    .local v2, "createTime":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    .local v0, "connectionTime":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long v4, v0, v2

    :goto_0
    return-wide v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 298
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 299
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 301
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 551
    const/4 v0, 0x0

    .line 552
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoPauseState()I
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallDetails;->getVideoPauseState()I

    move-result v0

    .line 654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract htcGetPreviousStateBeforeDisconnected()Lcom/android/internal/telephony/Call$State;
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isCollided()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->isCollided:Z

    return v0
.end method

.method public isForwarded()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isIncoming()Z
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public abstract isVTCall()Z
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public removeUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 566
    const/4 v0, 0x0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract requestFallBack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract setCCWT(Z)V
.end method

.method public abstract setCliValid(Lcom/android/internal/telephony/Connection$CliValid;)V
.end method

.method public setCollided(Z)V
    .locals 0
    .param p1, "collided"    # Z

    .prologue
    .line 587
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->isCollided:Z

    .line 588
    return-void
.end method

.method public setConnectTime(J)V
    .locals 2
    .param p1, "timeInMillis"    # J

    .prologue
    .line 235
    sget-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setConnectTime() not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public setConnectionDetails(Lcom/android/internal/telephony/CallDetails;)V
    .locals 0
    .param p1, "ConnDetails"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 186
    return-void
.end method

.method public setCreateTime(J)V
    .locals 2
    .param p1, "timeInMillis"    # J

    .prologue
    .line 216
    sget-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setCreateTime() not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 193
    .line 194
    return-void
.end method

.method public setHasUpdatedCallLog(Z)V
    .locals 0
    .param p1, "updated"    # Z

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mHasUpdatedCallLog:Z

    .line 450
    return-void
.end method

.method public setModifyConnectionDetails(Lcom/android/internal/telephony/CallModify;)V
    .locals 0
    .param p1, "modifyConn"    # Lcom/android/internal/telephony/CallModify;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 190
    return-void
.end method

.method public setFirewallCode(I)V
    .locals 0
    .param p1, "firewallCode"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mFirewallCode:I

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public setconnectTimeReal(J)V
    .locals 0
    .param p1, "connectTimeReal"    # J

    .prologue
    .line 607
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 426
    .local v0, "str":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pres.: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " postdial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cnap name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " post dial state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateCodecInfo(Ljava/lang/String;)Z
    .locals 8
    .param p1, "codec"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[codec] updateCodecInfo, codec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/Connection;->log(Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v5, :cond_3

    .line 693
    iget-object v5, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallDetails;->getExtras()[Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, "extras":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget-object v5, v5, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 695
    iget-object v5, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    const-string v6, "Codec"

    invoke-virtual {v5, v1, v6}, Lcom/android/internal/telephony/CallDetails;->findKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 696
    iget-object v5, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget-object v6, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget-object v6, v6, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    const-string v7, "Codec"

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 697
    .local v4, "original":Ljava/lang/String;
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 698
    iget-object v5, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    const-string v6, "Codec"

    invoke-virtual {v5, v1, v6, p1}, Lcom/android/internal/telephony/CallDetails;->updateExtrasValueForKey([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 699
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[codec] updateCodecInfo, update voice speech codec from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/Connection;->log(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x1

    .line 720
    .end local v1    # "extras":[Ljava/lang/String;
    .end local v4    # "original":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 703
    .restart local v1    # "extras":[Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[codec] updateCodecInfo, append voice speech codec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/Connection;->log(Ljava/lang/String;)V

    .line 704
    array-length v2, v1

    .line 705
    .local v2, "len":I
    add-int/lit8 v5, v2, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 706
    .local v3, "newExtras":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget-object v5, v5, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    invoke-static {v5, v7, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 707
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Codec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 708
    iget-object v5, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/CallDetails;->setExtras([Ljava/lang/String;)V

    .line 709
    const/4 v0, 0x1

    .line 710
    goto :goto_0

    .line 712
    .end local v2    # "len":I
    .end local v3    # "newExtras":[Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[codec] updateCodecInfo, add voice speech codec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/Connection;->log(Ljava/lang/String;)V

    .line 713
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "Codec=UNKNOWN"

    aput-object v5, v3, v7

    .line 714
    .restart local v3    # "newExtras":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/CallDetails;->setExtras([Ljava/lang/String;)V

    .line 715
    const/4 v0, 0x1

    goto :goto_0

    .line 718
    .end local v1    # "extras":[Ljava/lang/String;
    .end local v3    # "newExtras":[Ljava/lang/String;
    :cond_3
    const-string v5, "[codec] updateCodecInfo ignored, callDetails is null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/Connection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateMapUserData(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 615
    if-eqz p1, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 619
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getMapUserData()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    .line 621
    :cond_1
    return-void
.end method

.method public updateUserData(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 628
    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 631
    :cond_0
    return-void
.end method
