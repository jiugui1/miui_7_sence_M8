.class public Lcom/android/server/input/MiuiBaseInputManagerService;
.super Lcom/android/server/input/InputManagerService;
.source "MiuiBaseInputManagerService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 10
    return-void
.end method