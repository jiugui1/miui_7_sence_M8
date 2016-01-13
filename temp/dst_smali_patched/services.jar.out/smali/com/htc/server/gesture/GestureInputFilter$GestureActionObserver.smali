.class Lcom/htc/server/gesture/GestureInputFilter$GestureActionObserver;
.super Landroid/database/ContentObserver;
.source "GestureInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/gesture/GestureInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureActionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/gesture/GestureInputFilter;


# direct methods
.method public constructor <init>(Lcom/htc/server/gesture/GestureInputFilter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/gesture/GestureInputFilter$GestureActionObserver;->this$0:Lcom/htc/server/gesture/GestureInputFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observer(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "up"

    aput-object v3, v1, v5

    const/4 v3, 0x1

    const-string v4, "right"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "down"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "left"

    aput-object v4, v1, v3

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    const-string v3, "soul_gesture_vibration"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/htc/server/gesture/GestureInputFilter$GestureActionObserver;->this$0:Lcom/htc/server/gesture/GestureInputFilter;

    invoke-virtual {v3}, Lcom/htc/server/gesture/GestureInputFilter;->updateGestureAction()V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "soul_gesture_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter$GestureActionObserver;->this$0:Lcom/htc/server/gesture/GestureInputFilter;

    invoke-virtual {v0}, Lcom/htc/server/gesture/GestureInputFilter;->updateGestureAction()V

    return-void
.end method
