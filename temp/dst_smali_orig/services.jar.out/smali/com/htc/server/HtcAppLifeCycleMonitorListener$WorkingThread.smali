.class Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;
.super Landroid/os/HandlerThread;
.source "HtcAppLifeCycleMonitorListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAppLifeCycleMonitorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcAppLifeCycleMonitorListener;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcAppLifeCycleMonitorListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/server/HtcAppLifeCycleMonitorListener$WorkingThread;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitorListener;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method
