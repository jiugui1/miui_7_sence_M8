.class public Lcom/htc/zeroediting/script/ScriptItem;
.super Ljava/lang/Object;
.source "ScriptItem.java"


# instance fields
.field private mDef_template:I

.field private mEffect:Lcom/htc/zeroediting/script/Effect;

.field private mIndex:I

.field private mSource:Lcom/htc/zeroediting/script/MediaSource;

.field private mTimestamp:J

.field private mTransition:Lcom/htc/zeroediting/script/Transition;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mIndex:I

    .line 20
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/zeroediting/script/ScriptItem;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/htc/zeroediting/script/ScriptItem;

    iget v1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mIndex:I

    invoke-direct {v0, v1}, Lcom/htc/zeroediting/script/ScriptItem;-><init>(I)V

    .line 82
    .local v0, "ret":Lcom/htc/zeroediting/script/ScriptItem;
    iget-wide v1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mTimestamp:J

    iput-wide v1, v0, Lcom/htc/zeroediting/script/ScriptItem;->mTimestamp:J

    .line 83
    iget v1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mDef_template:I

    iput v1, v0, Lcom/htc/zeroediting/script/ScriptItem;->mDef_template:I

    .line 84
    iget-object v1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mEffect:Lcom/htc/zeroediting/script/Effect;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mEffect:Lcom/htc/zeroediting/script/Effect;

    invoke-virtual {v1}, Lcom/htc/zeroediting/script/Effect;->clone()Lcom/htc/zeroediting/script/Effect;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/zeroediting/script/ScriptItem;->mEffect:Lcom/htc/zeroediting/script/Effect;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mTransition:Lcom/htc/zeroediting/script/Transition;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mTransition:Lcom/htc/zeroediting/script/Transition;

    invoke-virtual {v1}, Lcom/htc/zeroediting/script/Transition;->clone()Lcom/htc/zeroediting/script/Transition;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/zeroediting/script/ScriptItem;->mTransition:Lcom/htc/zeroediting/script/Transition;

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mSource:Lcom/htc/zeroediting/script/MediaSource;

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mSource:Lcom/htc/zeroediting/script/MediaSource;

    invoke-virtual {v1}, Lcom/htc/zeroediting/script/MediaSource;->clone()Lcom/htc/zeroediting/script/MediaSource;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/zeroediting/script/ScriptItem;->mSource:Lcom/htc/zeroediting/script/MediaSource;

    .line 90
    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/htc/zeroediting/script/ScriptItem;->clone()Lcom/htc/zeroediting/script/ScriptItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTemplate()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/zeroediting/script/ScriptItem;->mDef_template:I

    return v0
.end method

.method public getEffect()Lcom/htc/zeroediting/script/Effect;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/zeroediting/script/ScriptItem;->mEffect:Lcom/htc/zeroediting/script/Effect;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/zeroediting/script/ScriptItem;->mIndex:I

    return v0
.end method

.method public getMediaSource()Lcom/htc/zeroediting/script/MediaSource;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/zeroediting/script/ScriptItem;->mSource:Lcom/htc/zeroediting/script/MediaSource;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/htc/zeroediting/script/ScriptItem;->mTimestamp:J

    return-wide v0
.end method

.method public getTransition()Lcom/htc/zeroediting/script/Transition;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/zeroediting/script/ScriptItem;->mTransition:Lcom/htc/zeroediting/script/Transition;

    return-object v0
.end method

.method public setDefaultTemplate(I)V
    .locals 0
    .param p1, "def_template"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mDef_template:I

    .line 50
    return-void
.end method

.method public setEffect(Lcom/htc/zeroediting/script/Effect;)V
    .locals 0
    .param p1, "effect"    # Lcom/htc/zeroediting/script/Effect;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mEffect:Lcom/htc/zeroediting/script/Effect;

    .line 58
    return-void
.end method

.method public setMediaSource(Lcom/htc/zeroediting/script/MediaSource;)V
    .locals 0
    .param p1, "source"    # Lcom/htc/zeroediting/script/MediaSource;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mSource:Lcom/htc/zeroediting/script/MediaSource;

    .line 74
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mTimestamp:J

    .line 42
    return-void
.end method

.method public setTransition(Lcom/htc/zeroediting/script/Transition;)V
    .locals 0
    .param p1, "transition"    # Lcom/htc/zeroediting/script/Transition;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/zeroediting/script/ScriptItem;->mTransition:Lcom/htc/zeroediting/script/Transition;

    .line 66
    return-void
.end method
