.class final Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$CallbackRunnable;
.super Ljava/lang/Object;
.source "AlarmScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRunnable"
.end annotation


# instance fields
.field private mAlarmListener:Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;


# direct methods
.method public constructor <init>(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)V
    .locals 0
    .param p1, "al"    # Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$CallbackRunnable;->mAlarmListener:Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$CallbackRunnable;->mAlarmListener:Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$CallbackRunnable;->mAlarmListener:Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    invoke-interface {v0}, Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;->onAlarmArrival()V

    :cond_0
    return-void
.end method
