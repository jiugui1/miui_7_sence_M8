.class public Lcom/htc/server/ulog/AmsListenerForUlog;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "AmsListenerForUlog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AmsListenerForUlog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->getInstance()Lcom/htc/server/ulog/UserBehaviorLoggingService;

    move-result-object v0

    .line 19
    .local v0, "uService":Lcom/htc/server/ulog/UserBehaviorLoggingService;
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->onFinishBooting()V

    .line 22
    :cond_0
    return-void
.end method

.method public onShutdown()V
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->getInstance()Lcom/htc/server/ulog/UserBehaviorLoggingService;

    move-result-object v0

    .line 11
    .local v0, "uService":Lcom/htc/server/ulog/UserBehaviorLoggingService;
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->onShutdown()V

    .line 14
    :cond_0
    return-void
.end method
