.class public abstract Lcom/android/internal/telephony/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIfCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Call$CallType;,
        Lcom/android/internal/telephony/Call$State;
    }
.end annotation


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field public isMpty:Z

.field private mConfInfoBundleList:[Landroid/os/Bundle;

.field private mConfUriList:[Ljava/lang/String;

.field public mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsGeneric:Z

.field public mState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "Call"

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->LOG_TAG:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/android/internal/telephony/Call;->isMpty:Z

    .line 70
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    .line 80
    iput-boolean v1, p0, Lcom/android/internal/telephony/Call;->mIsGeneric:Z

    return-void
.end method


# virtual methods
.method public getCallType()Lcom/android/internal/telephony/Call$CallType;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->VOICE:Lcom/android/internal/telephony/Call$CallType;

    return-object v0
.end method

.method public getConfInfoBundleList()[Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mConfInfoBundleList:[Landroid/os/Bundle;

    return-object v0
.end method

.method public getConfUriList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mConfUriList:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract getConnections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end method

.method public getEarliestConnectTime()J
    .locals 10

    .prologue
    .line 221
    const-wide v6, 0x7fffffffffffffffL

    .line 222
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 224
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 225
    const-wide/16 v8, 0x0

    .line 237
    :goto_0
    return-wide v8

    .line 228
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 229
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 232
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    .line 234
    .local v4, "t":J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v6, v4

    .line 228
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v4    # "t":J
    :cond_2
    move-wide v8, v6

    .line 237
    goto :goto_0
.end method

.method public getEarliestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .prologue
    .line 152
    const-wide v7, 0x7fffffffffffffffL

    .line 154
    .local v7, "time":J
    const/4 v1, 0x0

    .line 156
    .local v1, "earliest":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 158
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 159
    const/4 v9, 0x0

    .line 176
    :goto_0
    return-object v9

    .line 162
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "s":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 163
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 166
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 169
    .local v5, "t":J
    cmp-long v9, v5, v7

    if-gtz v9, :cond_1

    .line 171
    move-object v1, v0

    .line 172
    move-wide v7, v5

    .line 162
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v5    # "t":J
    :cond_2
    move-object v9, v1

    .line 176
    goto :goto_0
.end method

.method public getEarliestCreateTime()J
    .locals 10

    .prologue
    .line 199
    const-wide v6, 0x7fffffffffffffffL

    .line 201
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 203
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 204
    const-wide/16 v8, 0x0

    .line 216
    :goto_0
    return-wide v8

    .line 207
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 208
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 211
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    .line 213
    .local v4, "t":J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v6, v4

    .line 207
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v4    # "t":J
    :cond_2
    move-wide v8, v6

    .line 216
    goto :goto_0
.end method

.method public getLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 265
    const/4 v3, 0x0

    .line 286
    :cond_0
    return-object v3

    .line 271
    :cond_1
    const-wide/high16 v7, -0x8000000000000000L

    .line 273
    .local v7, "time":J
    const/4 v3, 0x0

    .line 274
    .local v3, "latest":Lcom/android/internal/telephony/Connection;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "s":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 275
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 276
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 279
    .local v5, "t":J
    cmp-long v9, v5, v7

    if-ltz v9, :cond_2

    .line 281
    move-object v3, v0

    .line 282
    move-wide v7, v5

    .line 274
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hangupDueToCollision()V
    .locals 5

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 331
    .local v1, "connections":Ljava/util/List;
    if-nez v1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 336
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 337
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 338
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/Connection;->setCollided(Z)V

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 341
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    goto :goto_0
.end method

.method public hangupIfAlive()V
    .locals 4

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hangupIfActive: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnections()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDialingOrAlerting()Z
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    return v0
.end method

.method public abstract isFull()Z
.end method

.method public isGeneric()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/internal/telephony/Call;->mIsGeneric:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public isVideoTelephony()Z
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$CallType;->isVideoTelephony()Z

    move-result v0

    return v0
.end method

.method public abstract requestFallBack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setConfInfoBundleList([Landroid/os/Bundle;)V
    .locals 0
    .param p1, "infobundlelist"    # [Landroid/os/Bundle;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mConfInfoBundleList:[Landroid/os/Bundle;

    .line 193
    return-void
.end method

.method public setConfUriList([Ljava/lang/String;)V
    .locals 0
    .param p1, "urilist"    # [Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mConfUriList:[Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setGeneric(Z)V
    .locals 0
    .param p1, "generic"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/android/internal/telephony/Call;->mIsGeneric:Z

    .line 302
    return-void
.end method
