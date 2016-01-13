.class public Lcom/htc/zeroediting/script/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# static fields
.field public static final SLIDE_IN_BOX_SLIDE_DOWN:I = 0x14

.field public static final SLIDE_IN_BOX_SLIDE_LEFT:I = 0x11

.field public static final SLIDE_IN_BOX_SLIDE_RIGHT:I = 0x12

.field public static final SLIDE_IN_BOX_SLIDE_UP:I = 0x13

.field public static final SLIDE_IN_CROSS_ZOOM_IN:I = 0x9

.field public static final SLIDE_IN_CROSS_ZOOM_OUT:I = 0xa

.field public static final SLIDE_IN_PUSH_DOWN:I = 0x2

.field public static final SLIDE_IN_PUSH_LEFT:I = 0x0

.field public static final SLIDE_IN_PUSH_RIGHT:I = 0x1

.field public static final SLIDE_IN_PUSH_UP:I = 0x3

.field public static final SLIDE_IN_RESERVED_0:I = 0x4

.field public static final SLIDE_IN_SLIDE_DOWN:I = 0x7

.field public static final SLIDE_IN_SLIDE_LEFT:I = 0x5

.field public static final SLIDE_IN_SLIDE_RIGHT:I = 0x6

.field public static final SLIDE_IN_SLIDE_UP:I = 0x8

.field public static final SLIDE_IN_WIPE_CENTER_IN:I = 0xf

.field public static final SLIDE_IN_WIPE_CENTER_OUT:I = 0x10

.field public static final SLIDE_IN_WIPE_DOWN:I = 0xe

.field public static final SLIDE_IN_WIPE_LEFT:I = 0xb

.field public static final SLIDE_IN_WIPE_RIGHT:I = 0xc

.field public static final SLIDE_IN_WIPE_UP:I = 0xd

.field public static final TRANS_BLUR_IN:I = 0x400

.field public static final TRANS_CIRCLE_IN:I = 0x4000

.field public static final TRANS_DISSOLVE_IN:I = 0x40

.field public static final TRANS_FADE_IN:I = 0x2

.field public static final TRANS_FADE_OUT:I = 0x8

.field public static final TRANS_NONE:I = 0x1

.field public static final TRANS_NULL:I = 0x0

.field public static final TRANS_PAUSE_FADE_OUT:I = 0x4

.field public static final TRANS_RESERVED_0:I = 0x80

.field public static final TRANS_RESERVED_1:I = 0x100

.field public static final TRANS_RESERVED_2:I = 0x200

.field public static final TRANS_ROTATION_IN:I = 0x10

.field public static final TRANS_ROTATION_OUT:I = 0x20

.field public static final TRANS_SLIDE_IN:I = 0x2000

.field public static final TRANS_TEARDOWN_IN:I = 0x8000

.field public static final TRANS_WHITE_IN:I = 0x1000

.field public static final TRANS_WHITE_OUT:I = 0x800


# instance fields
.field public mInDuration:I

.field public mOutDuration:I

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    .line 75
    iput v0, p0, Lcom/htc/zeroediting/script/Transition;->mInDuration:I

    .line 76
    iput v0, p0, Lcom/htc/zeroediting/script/Transition;->mOutDuration:I

    .line 77
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "inDuration"    # I
    .param p3, "outDuration"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    .line 69
    iput p2, p0, Lcom/htc/zeroediting/script/Transition;->mInDuration:I

    .line 70
    iput p3, p0, Lcom/htc/zeroediting/script/Transition;->mOutDuration:I

    .line 71
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/zeroediting/script/Transition;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lcom/htc/zeroediting/script/Transition;

    iget v1, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    iget v2, p0, Lcom/htc/zeroediting/script/Transition;->mInDuration:I

    iget v3, p0, Lcom/htc/zeroediting/script/Transition;->mOutDuration:I

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/zeroediting/script/Transition;-><init>(III)V

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
    .line 3
    invoke-virtual {p0}, Lcom/htc/zeroediting/script/Transition;->clone()Lcom/htc/zeroediting/script/Transition;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x401

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x1001

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x2001

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const v1, 0x8001

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x4001

    if-ne v0, v1, :cond_1

    .line 89
    :cond_0
    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mInDuration:I

    .line 98
    :goto_0
    return v0

    .line 91
    :cond_1
    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x801

    if-ne v0, v1, :cond_3

    .line 95
    :cond_2
    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mOutDuration:I

    goto :goto_0

    .line 98
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x401

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x1001

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x2001

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const v1, 0x8001

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x4001

    if-ne v0, v1, :cond_2

    .line 111
    :cond_0
    iput p1, p0, Lcom/htc/zeroediting/script/Transition;->mInDuration:I

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/htc/zeroediting/script/Transition;->mType:I

    const/16 v1, 0x801

    if-ne v0, v1, :cond_1

    .line 117
    :cond_3
    iput p1, p0, Lcom/htc/zeroediting/script/Transition;->mOutDuration:I

    goto :goto_0
.end method
