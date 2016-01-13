.class final Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemCrashChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NativeCrashReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;


# direct methods
.method private constructor <init>(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;Lcom/htc/server/SystemCrashChecker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;
    .param p2, "x1"    # Lcom/htc/server/SystemCrashChecker$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;-><init>(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    const-string v1, "com.htc.intent.action.FINALIZER_TIMEOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    new-instance v0, Lcom/htc/server/SystemCrashChecker$FinalizerTimeoutObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/server/SystemCrashChecker$FinalizerTimeoutObject;-><init>(Lcom/htc/server/SystemCrashChecker$1;)V

    .line 105
    .local v0, "fto":Lcom/htc/server/SystemCrashChecker$FinalizerTimeoutObject;
    const/4 v0, 0x0

    .line 106
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 109
    .end local v0    # "fto":Lcom/htc/server/SystemCrashChecker$FinalizerTimeoutObject;
    :cond_0
    return-void
.end method
