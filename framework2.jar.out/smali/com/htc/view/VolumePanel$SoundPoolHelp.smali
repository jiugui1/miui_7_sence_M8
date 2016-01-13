.class Lcom/htc/view/VolumePanel$SoundPoolHelp;
.super Lcom/htc/view/VolumePanel$ISoundPlay;
.source "VolumePanel.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolHelp"
.end annotation


# instance fields
.field private mLastStreamID:I

.field mListSrcFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamType:I

.field mToneGen:Landroid/media/ToneGenerator;

.field mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method public constructor <init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V
    .locals 4
    .param p3, "maxStreams"    # I
    .param p4, "streamType"    # I
    .param p5, "srcQuality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p2, "listSrcFile":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 744
    iput-object p1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel$ISoundPlay;-><init>(Lcom/htc/view/VolumePanel;)V

    .line 737
    iput v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mLastStreamID:I

    .line 738
    iput v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mStreamType:I

    .line 745
    iput p4, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mStreamType:I

    .line 746
    if-eqz p2, :cond_2

    .line 747
    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, p3, p4, p5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    .line 748
    iget-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 749
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/htc/view/VolumePanel$SoundID;

    iput-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    .line 750
    iput-object p2, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mListSrcFile:Ljava/util/List;

    .line 751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    new-instance v2, Lcom/htc/view/VolumePanel$SoundID;

    invoke-direct {v2, p1}, Lcom/htc/view/VolumePanel$SoundID;-><init>(Lcom/htc/view/VolumePanel;)V

    aput-object v2, v1, v0

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_0
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VolumePanel"

    const-string v2, "SoundPoolHelp construct done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 759
    :cond_2
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    # getter for: Lcom/htc/view/VolumePanel;->JB_FULL_LOG_DEBUG:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundPoolHelp init ToneGenerator for streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_3
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, p4, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    goto :goto_1
.end method

.method private playEffectBySoundPool(I)I
    .locals 11
    .param p1, "soundID"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 805
    const/high16 v10, 0x3f800000    # 1.0f

    .line 806
    .local v10, "volume":F
    const/4 v8, 0x0

    .line 807
    .local v8, "priority":I
    const/4 v7, 0x0

    .line 808
    .local v7, "loop":I
    const/high16 v9, 0x3f800000    # 1.0f

    .line 810
    .local v9, "rateNormal":F
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mLastStreamID:I

    .line 811
    iget v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mLastStreamID:I

    return v0
.end method


# virtual methods
.method public fnplay(I)I
    .locals 7
    .param p1, "soundIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 773
    iget-object v4, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v4, :cond_6

    .line 774
    iget-object v4, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    array-length v4, v4

    if-ge p1, v4, :cond_0

    if-gez p1, :cond_2

    .line 775
    :cond_0
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 776
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SoundPoolHelp fnplay index OOB "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_1
    iget-object v4, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    array-length v4, v4

    add-int/lit8 p1, v4, -0x1

    .line 781
    :cond_2
    iget-object v4, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/htc/view/VolumePanel$SoundID;->mId:I

    if-ne v4, v3, :cond_5

    .line 782
    const/4 v1, 0x1

    .line 784
    .local v1, "priorityDefault":I
    iget-object v4, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mListSrcFile:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    .line 785
    .local v2, "soundID":I
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SoundPoolHelp load soundid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (soundIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_3
    iget-object v3, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    aget-object v3, v3, p1

    iput v2, v3, Lcom/htc/view/VolumePanel$SoundID;->mId:I

    .line 800
    .end local v1    # "priorityDefault":I
    .end local v2    # "soundID":I
    :cond_4
    :goto_0
    return v2

    .line 790
    :cond_5
    iget-object v3, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/view/VolumePanel$SoundID;->mId:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->playEffectBySoundPool(I)I

    move-result v2

    goto :goto_0

    .line 792
    :cond_6
    iget-object v4, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    if-eqz v4, :cond_7

    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, "bResult":Z
    iget-object v3, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/media/ToneGenerator;->startTone(I)Z

    move-result v0

    .line 795
    if-nez v0, :cond_4

    .line 798
    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "bResult":Z
    :cond_7
    move v2, v3

    .line 800
    goto :goto_0
.end method

.method public fnstop()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mLastStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 770
    :cond_1
    return-void
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 5
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 828
    # getter for: Lcom/htc/view/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoundPoolHelp onLoadComplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    const/4 v1, 0x0

    .line 830
    .local v1, "status_succee":I
    iget-object v2, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    if-ne v2, p1, :cond_1

    if-eqz p3, :cond_2

    .line 838
    :cond_1
    return-void

    .line 832
    :cond_2
    invoke-direct {p0, p2}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->playEffectBySoundPool(I)I

    .line 834
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 835
    iget-object v2, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/view/VolumePanel$SoundID;->mId:I

    if-ne v2, p2, :cond_3

    .line 836
    iget-object v2, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/view/VolumePanel$SoundID;->mLoaded:Z

    .line 834
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 815
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 817
    iput-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 821
    iput-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    .line 823
    :cond_1
    return-void
.end method
