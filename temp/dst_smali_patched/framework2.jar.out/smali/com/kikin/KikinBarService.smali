.class public Lcom/kikin/KikinBarService;
.super Lcom/kikin/KikinServiceConnection;
.source "KikinBarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/KikinBarService$MessageType;
    }
.end annotation


# static fields
.field private static final KIKIN_SEARCH_ACTION:Ljava/lang/String; = "com.kikin.KikinSearchService"

.field private static final TAG:Ljava/lang/String; = "KikinBarService"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incomingMessageHadler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/kikin/KikinServiceConnection;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public static showKikinDisabledToast(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestSettings"    # Landroid/os/Bundle;

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kikin.KikinSearchService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "requestSettings"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "message"

    sget-object v3, Lcom/kikin/KikinBarService$MessageType;->SHOW_KIKIN_DISABLED_TOAST:Lcom/kikin/KikinBarService$MessageType;

    invoke-virtual {v3}, Lcom/kikin/KikinBarService$MessageType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KikinBarService"

    const-string v3, "failed to show toast [kikin bar service]"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public doSearch(Lcom/kikin/selection/Selection;)Z
    .locals 2
    .param p1, "selection"    # Lcom/kikin/selection/Selection;

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "selection"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Lcom/kikin/KikinBarService$MessageType;->DO_SEARCH:Lcom/kikin/KikinBarService$MessageType;

    invoke-virtual {p0, v1, v0}, Lcom/kikin/KikinBarService;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "com.kikin.KikinSearchService"

    return-object v0
.end method

.method public hide(Z)Z
    .locals 2
    .param p1, "shouldRestore"    # Z

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "shouldRestore"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/kikin/KikinBarService$MessageType;->HIDE_KIKIN_BAR:Lcom/kikin/KikinBarService$MessageType;

    invoke-virtual {p0, v1, v0}, Lcom/kikin/KikinBarService;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public playKikinSound()Z
    .locals 3

    .prologue
    sget-object v0, Lcom/kikin/KikinBarService$MessageType;->PLAY_KIKIN_SOUND:Lcom/kikin/KikinBarService$MessageType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kikin/KikinBarService;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public sendActivityRestarted()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/kikin/KikinBarService$MessageType;->ACTIVITY_RESTARTED:Lcom/kikin/KikinBarService$MessageType;

    invoke-virtual {p0, v0}, Lcom/kikin/KikinBarService;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;)Z

    move-result v0

    return v0
.end method

.method public sendCabWindowToken(Landroid/os/IBinder;Z)Z
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "runOnConnect"    # Z

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "windowToken"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/kikin/KikinBarService$MessageType;->CAB_WINDOW_TOKEN:Lcom/kikin/KikinBarService$MessageType;

    invoke-virtual {p0, v1, v0, p2}, Lcom/kikin/KikinBarService;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;Z)Z

    move-result v1

    return v1
.end method

.method public sendContainerRect(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "maxKikinResContainerRect"    # Landroid/graphics/Rect;

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "rect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Lcom/kikin/KikinBarService$MessageType;->ON_ACTION_BAR_HEIGHT_CHANGE:Lcom/kikin/KikinBarService$MessageType;

    invoke-virtual {p0, v1, v0}, Lcom/kikin/KikinBarService;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public show(Landroid/os/IBinder;Lcom/kikin/selection/Selection;Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/kikin/theme/ThemeDetector$KikinTheme;Lcom/kikin/KikinBarState;Landroid/os/Bundle;ZZ)Z
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "selection"    # Lcom/kikin/selection/Selection;
    .param p3, "requestSettings"    # Landroid/os/Bundle;
    .param p4, "barRect"    # Landroid/graphics/Rect;
    .param p5, "windowRect"    # Landroid/graphics/Rect;
    .param p6, "theme"    # Lcom/kikin/theme/ThemeDetector$KikinTheme;
    .param p7, "openState"    # Lcom/kikin/KikinBarState;
    .param p8, "state"    # Landroid/os/Bundle;
    .param p9, "runOnConnect"    # Z
    .param p10, "isSearchFromLongPress"    # Z

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "selection"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "requestSettings"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "windowToken"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v1, "barRect"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "windowRect"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "theme"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "openState"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p8, :cond_0

    const-string v1, "state"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v1, "isSearchFromLongPress"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/kikin/KikinBarService$MessageType;->SHOW_KIKIN_BAR:Lcom/kikin/KikinBarService$MessageType;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/kikin/KikinBarService;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;Z)Z

    move-result v1

    return v1
.end method
