.class Landroid/media/HtcEffectManager;
.super Landroid/media/HtcEffectManagerBase;
.source "HtcEffectManager.java"


# static fields
.field private static final SET_SYSTEM_EFFECT_PROFILE:I = 0x0

.field private static final SOUND_ENHANCER_EFFECT:Ljava/lang/String; = "audio.soundenhancer.effect"

.field private static SUPPORT_DTS:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcEffectManager"

.field private static eADSReaderName:Ljava/lang/String;

.field private static manager:Lcom/htc/customization/HtcCustomizationManager;

.field private static reader:Lcom/htc/customization/HtcCustomizationReader;

.field private static readerNeedSIMReady:Z


# instance fields
.field private mBeatsSpeaker:Z

.field private mDefaultSoundEffect:I

.field private mIconId:I

.field private mNotificationOn:Z

.field private mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

.field private mVideoOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-string v0, "Android_Multimedia"

    sput-object v0, Landroid/media/HtcEffectManager;->eADSReaderName:Ljava/lang/String;

    sput-boolean v1, Landroid/media/HtcEffectManager;->readerNeedSIMReady:Z

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Landroid/media/HtcEffectManager;->manager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v0, Landroid/media/HtcEffectManager;->manager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/HtcEffectManager;->manager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v2, Landroid/media/HtcEffectManager;->eADSReaderName:Ljava/lang/String;

    const/4 v3, 0x1

    sget-boolean v4, Landroid/media/HtcEffectManager;->readerNeedSIMReady:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_0
    sput-object v0, Landroid/media/HtcEffectManager;->reader:Lcom/htc/customization/HtcCustomizationReader;

    sget-object v0, Landroid/media/HtcEffectManager;->reader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/media/HtcEffectManager;->reader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_theater_effect_logo"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    sput-boolean v0, Landroid/media/HtcEffectManager;->SUPPORT_DTS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Landroid/media/AudioService;
    .param p4, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0x64

    const/16 v5, 0x386

    const/16 v4, 0x384

    const/16 v3, 0x320

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V

    iput-boolean v7, p0, Landroid/media/HtcEffectManager;->mNotificationOn:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=Beats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=SRS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v3, p0, Landroid/media/HtcEffectManager;->mDefaultSoundEffect:I

    iget v0, p0, Landroid/media/HtcEffectManager;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=Beats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v4, p0, Landroid/media/HtcEffectManager;->mDefaultSoundEffect:I

    :cond_0
    :goto_0
    iput v6, p0, Landroid/media/HtcEffectManager;->mSystemSoundEffect:I

    iput v6, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-static {}, Landroid/media/AudioManager;->hasBeatsSpeaker()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/HtcEffectManager;->mBeatsSpeaker:Z

    iput-boolean v7, p0, Landroid/media/HtcEffectManager;->mVideoOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/HtcEffectManager;->mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

    return-void

    :cond_1
    iget v0, p0, Landroid/media/HtcEffectManager;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=SRS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v5, p0, Landroid/media/HtcEffectManager;->mDefaultSoundEffect:I

    goto :goto_0
.end method

.method private checkBeatsSupport()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "HtcEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBeatsSupport mMirrorOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/HtcEffectManager;->mMirrorOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMiracastOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/HtcEffectManager;->mMiracastOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/HtcEffectManager;->mSubwooferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/HtcEffectManager;->mSubwooferHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/HtcEffectManager;->mHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/HtcEffectManager;->mBTHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTA2dpHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/HtcEffectManager;->mBTA2dpHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHDMIOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/HtcEffectManager;->mHDMIOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBeatsSpeaker="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/HtcEffectManager;->mBeatsSpeaker:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/media/HtcEffectManager;->mType:I

    if-ne v2, v0, :cond_3

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mMirrorOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mMiracastOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mSubwooferOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mSubwooferHeadset:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mBTHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mHDMIOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mBeatsSpeaker:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/media/HtcEffectManager;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mMirrorOn:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mMiracastOn:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mSubwooferOn:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mSubwooferHeadset:Z

    if-eqz v2, :cond_6

    :cond_4
    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mBTHeadsetConnected:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mBTA2dpHeadset:Z

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mHDMIOn:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mBeatsSpeaker:Z

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private convertEffect(I)I
    .locals 4
    .param p1, "effect"    # I

    .prologue
    const/16 v0, 0x386

    const-string v1, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertEffect before="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x320

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/media/HtcEffectManager;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/media/HtcEffectManager;->mBeatsSpeaker:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/media/HtcEffectManager;->mBTHeadsetConnected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/media/HtcEffectManager;->mVideoOn:Z

    if-nez v1, :cond_0

    move p1, v0

    :cond_0
    :goto_0
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertEffect after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    iget v1, p0, Landroid/media/HtcEffectManager;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/media/HtcEffectManager;->mBeatsSpeaker:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/media/HtcEffectManager;->mBTHeadsetConnected:Z

    if-nez v1, :cond_2

    move p1, v0

    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public getSoundEffect(Z)I
    .locals 2
    .param p1, "isSystemWise"    # Z

    .prologue
    const-string v0, "HtcEffectManager"

    const-string v1, "getSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Landroid/media/HtcEffectManager;->mSystemSoundEffect:I

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemProperty(I)I
    .locals 1
    .param p1, "name"    # I

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public hideBeatsIcon()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/media/HtcEffectManager;->mNotificationOn:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcEffectManager"

    const-string v1, "disableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/HtcEffectManager;->mNotificationOn:Z

    :cond_0
    return-void
.end method

.method public loadSoundEffect()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/media/HtcEffectManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio.soundenhancer.effect"

    const/16 v3, -0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "effect":I
    const-string v1, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSoundEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/HtcEffectManager;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Landroid/media/HtcEffectManager;->mSystemSoundEffect:I

    :goto_0
    invoke-virtual {p0}, Landroid/media/HtcEffectManager;->updateSoundEffect()V

    monitor-exit v2

    return-void

    :cond_0
    iget v1, p0, Landroid/media/HtcEffectManager;->mDefaultSoundEffect:I

    iput v1, p0, Landroid/media/HtcEffectManager;->mSystemSoundEffect:I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMessageBeatsNotify()V
    .locals 6

    .prologue
    const/16 v5, 0x385

    iget-object v3, p0, Landroid/media/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v1, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    .local v1, "effect":I
    sget-boolean v2, Landroid/media/HtcEffectManager;->SUPPORT_DTS:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x320

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Landroid/media/HtcEffectManager;->mVideoOn:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x385

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .local v0, "active":Z
    const-string v2, "HtcEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageBeatsNotify active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/media/HtcEffectManager;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    if-eqz v0, :cond_3

    const/16 v2, 0x384

    if-eq v1, v2, :cond_1

    if-ne v1, v5, :cond_3

    :cond_1
    invoke-virtual {p0, v1}, Landroid/media/HtcEffectManager;->showBeatsIcon(I)V

    :cond_2
    :goto_0
    return-void

    .end local v0    # "active":Z
    .end local v1    # "effect":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "active":Z
    .restart local v1    # "effect":I
    :cond_3
    invoke-virtual {p0}, Landroid/media/HtcEffectManager;->hideBeatsIcon()V

    goto :goto_0

    :cond_4
    iget v2, p0, Landroid/media/HtcEffectManager;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_6

    const/16 v2, 0x386

    if-eq v1, v2, :cond_5

    if-ne v1, v5, :cond_6

    :cond_5
    invoke-virtual {p0, v1}, Landroid/media/HtcEffectManager;->showBeatsIcon(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/media/HtcEffectManager;->hideBeatsIcon()V

    goto :goto_0
.end method

.method public onPersistProperty(II)V
    .locals 3
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown property name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/HtcEffectManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "audio.soundenhancer.effect"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcEffectManager"

    const-string v1, "can\'t update system sound effect in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoEvent client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/media/HtcEffectManager;->mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

    iget-object v0, v0, Landroid/media/HtcEffectManagerBase$VideoEvent;->mClientId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

    invoke-virtual {v0}, Landroid/media/HtcEffectManagerBase$VideoEvent;->unlinkToDeath()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/HtcEffectManager;->mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

    :cond_0
    iget-object v0, p0, Landroid/media/HtcEffectManager;->mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/HtcEffectManagerBase$VideoEvent;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/HtcEffectManagerBase$VideoEvent;-><init>(Landroid/media/HtcEffectManagerBase;Landroid/media/HtcEffectManagerBase;Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/HtcEffectManager;->mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

    :cond_1
    :goto_0
    iput-boolean p3, p0, Landroid/media/HtcEffectManager;->mVideoOn:Z

    invoke-virtual {p0}, Landroid/media/HtcEffectManager;->updateSoundEffect()V

    monitor-exit v1

    return-void

    :cond_2
    iget-object v0, p0, Landroid/media/HtcEffectManager;->mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

    invoke-virtual {v0}, Landroid/media/HtcEffectManagerBase$VideoEvent;->unlinkToDeath()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/HtcEffectManager;->mVideoEvent:Landroid/media/HtcEffectManagerBase$VideoEvent;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetSoundEffect()V
    .locals 2

    .prologue
    const-string v0, "HtcEffectManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v0, -0x64

    :try_start_0
    iput v0, p0, Landroid/media/HtcEffectManager;->mSystemSoundEffect:I

    const/16 v0, -0x64

    iput v0, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemProperty(II)V
    .locals 0
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    return-void
.end method

.method public setSystemSoundEffect(I)V
    .locals 8
    .param p1, "effect"    # I

    .prologue
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemSoundEffect id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/media/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v0, p0, Landroid/media/HtcEffectManager;->mSystemSoundEffect:I

    if-ne v0, p1, :cond_0

    const-string v0, "HtcEffectManager"

    const-string v1, "system sound effect is the same as previous"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x64

    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/media/HtcEffectManager;->isValidSystemSoundEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/media/HtcEffectManager;->mSystemSoundEffect:I

    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/media/HtcEffectManager;->mSystemSoundEffect:I

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/HtcEffectManager;->sendMsg(IIIILjava/lang/Object;I)V

    invoke-virtual {p0}, Landroid/media/HtcEffectManager;->updateSoundEffect()V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v7

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/media/HtcEffectManager;->mDefaultSoundEffect:I

    iput v0, p0, Landroid/media/HtcEffectManager;->mSystemSoundEffect:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public showBeatsIcon(I)V
    .locals 6
    .param p1, "iconId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/media/HtcEffectManager;->mNotificationOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/HtcEffectManager;->mIconId:I

    if-eq v0, p1, :cond_1

    :cond_0
    const-string v0, "HtcEffectManager"

    const-string v1, "enableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/media/HtcEffectManager;->mIconId:I

    iget v0, p0, Landroid/media/HtcEffectManager;->mIconId:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Landroid/media/HtcEffectManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    invoke-virtual {v0, v1, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iput-boolean v5, p0, Landroid/media/HtcEffectManager;->mNotificationOn:Z

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/HtcEffectManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    const v2, 0x30200a1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/HtcEffectManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    const v2, 0x302009f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/media/HtcEffectManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    const v2, 0x30200a0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method updateSoundEffect()V
    .locals 12

    .prologue
    const/16 v3, 0x320

    const/4 v1, 0x0

    const/4 v9, 0x0

    .local v9, "effectChanged":Z
    invoke-direct {p0}, Landroid/media/HtcEffectManager;->checkBeatsSupport()Z

    move-result v10

    .local v10, "isBeatsSupport":Z
    iget-object v0, p0, Landroid/media/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, "oldCommand":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_3

    iget v2, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/HtcEffectManager;->sendMsg(IIIILjava/lang/Object;I)V

    iget-object v0, p0, Landroid/media/HtcEffectManager;->mAudioService:Landroid/media/AudioService;

    iget v1, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->broadcastSoundEffectChanged(I)V

    .end local v7    # "command":Ljava/lang/String;
    :cond_2
    return-void

    :cond_3
    if-nez v10, :cond_4

    iget v0, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    if-eq v0, v3, :cond_4

    iput v3, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    if-eqz v10, :cond_0

    iget v0, p0, Landroid/media/HtcEffectManager;->mSystemSoundEffect:I

    invoke-direct {p0, v0}, Landroid/media/HtcEffectManager;->convertEffect(I)I

    move-result v8

    .local v8, "effect":I
    iget v0, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    if-eq v0, v8, :cond_0

    iput v8, p0, Landroid/media/HtcEffectManager;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    goto :goto_0
.end method
