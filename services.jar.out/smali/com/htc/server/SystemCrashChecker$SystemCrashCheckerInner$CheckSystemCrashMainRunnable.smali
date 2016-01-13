.class final Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;
.super Ljava/lang/Object;
.source "SystemCrashChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckSystemCrashMainRunnable"
.end annotation


# instance fields
.field checkSystemCrash:Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemServerCrash;

.field final synthetic this$1:Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;


# direct methods
.method constructor <init>(Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;)V
    .locals 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;->this$1:Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemServerCrash;

    iget-object v1, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;->this$1:Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;

    invoke-direct {v0, v1}, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemServerCrash;-><init>(Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;)V

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;->checkSystemCrash:Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemServerCrash;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;->checkSystemCrash:Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemServerCrash;

    invoke-virtual {v0}, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemServerCrash;->run()V

    .line 136
    return-void
.end method
