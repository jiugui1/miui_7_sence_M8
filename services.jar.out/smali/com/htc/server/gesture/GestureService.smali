.class public final Lcom/htc/server/gesture/GestureService;
.super Lcom/htc/service/IGestureService$Stub;
.source "GestureService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/service/IGestureService$Stub;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public checkHtcGestureFilterOutList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public registerHtcGestureFilterOutList(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15
    return-void
.end method

.method public unregisterHtcGestureFilterOutList(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    return-void
.end method
