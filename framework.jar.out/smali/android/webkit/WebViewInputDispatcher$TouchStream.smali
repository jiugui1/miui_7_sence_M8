.class final Landroid/webkit/WebViewInputDispatcher$TouchStream;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewInputDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchStream"
.end annotation


# instance fields
.field private mLastEvent:Landroid/view/MotionEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewInputDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebViewInputDispatcher$1;

    .prologue
    .line 1387
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>()V

    return-void
.end method

.method private updateLastEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1457
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    .line 1458
    return-void

    .line 1457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLastEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public isCancelNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1450
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1406
    if-nez p1, :cond_2

    .line 1407
    invoke-virtual {p0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1408
    iget-object p1, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    .line 1409
    if-eqz p1, :cond_0

    .line 1410
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1411
    iput-object v0, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    :cond_0
    move-object v0, p1

    .line 1441
    :cond_1
    :goto_0
    return-object v0

    .line 1417
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1430
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->updateLastEvent(Landroid/view/MotionEvent;)V

    move-object v0, p1

    .line 1431
    goto :goto_0

    .line 1422
    :pswitch_2
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1426
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->updateLastEvent(Landroid/view/MotionEvent;)V

    move-object v0, p1

    .line 1427
    goto :goto_0

    .line 1434
    :pswitch_3
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 1437
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->updateLastEvent(Landroid/view/MotionEvent;)V

    move-object v0, p1

    .line 1438
    goto :goto_0

    .line 1417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method