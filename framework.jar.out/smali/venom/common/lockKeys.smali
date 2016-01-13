.class public Lvenom/common/lockKeys;
.super Ljava/lang/Object;
.source "lockKeys.java"


# instance fields
.field private conf:Lvenom/common/settings;

.field private mContext:Landroid/content/Context;

.field private waitingForKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvenom/common/lockKeys;->mContext:Landroid/content/Context;

    new-instance v0, Lvenom/common/settings;

    invoke-direct {v0}, Lvenom/common/settings;-><init>()V

    iput-object v0, p0, Lvenom/common/lockKeys;->conf:Lvenom/common/settings;

    iget-object v0, p0, Lvenom/common/lockKeys;->conf:Lvenom/common/settings;

    iget-boolean v0, v0, Lvenom/common/settings;->HAS_4_KEY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lvenom/common/lockKeys;->waitingForKey:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0
.end method


# virtual methods
.method public isUnlockKey(Landroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0x52

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lvenom/common/lockKeys;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const-string/jumbo v4, "tweaks_slide_unlock"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    iget-object v4, p0, Lvenom/common/lockKeys;->conf:Lvenom/common/settings;

    iget-boolean v4, v4, Lvenom/common/settings;->HAS_4_KEY:Z

    if-nez v4, :cond_1

    invoke-virtual {p0, p1}, Lvenom/common/lockKeys;->slide2unlock(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lvenom/common/lockKeys;->conf:Lvenom/common/settings;

    iget-boolean v4, v4, Lvenom/common/settings;->HAS_4_KEY:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lvenom/common/lockKeys;->slide2unlock4(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    const-string/jumbo v4, "tweaks_home_unlock"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    :cond_4
    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    const-string/jumbo v4, "tweaks_back_unlock"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    :cond_5
    iget-object v4, p0, Lvenom/common/lockKeys;->conf:Lvenom/common/settings;

    iget-boolean v4, v4, Lvenom/common/settings;->HAS_4_KEY:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x54

    if-ne v1, v4, :cond_6

    const-string/jumbo v4, "tweaks_search_unlock"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    :cond_6
    if-ne v1, v5, :cond_7

    const-string/jumbo v4, "tweaks_menu_unlock"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    if-eq v1, v5, :cond_9

    const/16 v4, 0xbb

    if-ne v1, v4, :cond_7

    :cond_9
    const-string/jumbo v4, "tweaks_recent_unlock"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_7

    goto :goto_0
.end method

.method public slide2unlock(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :sswitch_0
    iget v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x3

    iput v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    if-ne v1, v0, :cond_1

    const/16 v1, 0x52

    iput v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x52

    :sswitch_3
    iget v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    if-ne v1, v0, :cond_2

    const-string v1, "m0narX_tweaks"

    const-string v2, "Buttons gesture Slide2Unlock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lvenom/common/lockKeys;->waitingForKey:I

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    iput v3, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_3
        0x54 -> :sswitch_2
        0xbb -> :sswitch_2
    .end sparse-switch
.end method

.method public slide2unlock4(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :sswitch_0
    iget v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    if-ne v1, v0, :cond_1

    const/16 v1, 0x52

    iput v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    :sswitch_2
    iget v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    if-ne v1, v0, :cond_2

    const/16 v1, 0x54

    iput v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    :sswitch_3
    iget v1, p0, Lvenom/common/lockKeys;->waitingForKey:I

    if-ne v1, v0, :cond_3

    const-string v1, "m0narX_tweaks"

    const-string v2, "Buttons gesture Slide2Unlock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lvenom/common/lockKeys;->waitingForKey:I

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    iput v3, p0, Lvenom/common/lockKeys;->waitingForKey:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_2
        0x54 -> :sswitch_3
    .end sparse-switch
.end method
