.class public final Lcom/htc/server/ulog/AlarmScheduler;
.super Ljava/lang/Object;
.source "AlarmScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;,
        Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;,
        Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;,
        Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;
    }
.end annotation


# static fields
.field private static final EXACT_ACTION_SURFIX:Ljava/lang/String; = "EXACT"

.field private static final INEXACT_ACTION_SURFIX:Ljava/lang/String; = "INEXACT"

.field private static final TAG:Ljava/lang/String; = "AlarmScheduler"

.field private static final VERBOSE:Z


# instance fields
.field private final mExactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

.field private final mInexactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/server/ulog/Utils;->VERBOSE:Z

    sput-boolean v0, Lcom/htc/server/ulog/AlarmScheduler;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;

    const-string v1, "INEXACT"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;)V

    .local v0, "inexactScheduler":Lcom/htc/server/ulog/AlarmScheduler$InexactScheduler;
    iput-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mInexactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    new-instance v1, Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;

    const-string v2, "EXACT"

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/htc/server/ulog/AlarmScheduler$ExactScheduler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase$OnPassiveScheduleListener;)V

    iput-object v1, p0, Lcom/htc/server/ulog/AlarmScheduler;->mExactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/server/ulog/AlarmScheduler;->VERBOSE:Z

    return v0
.end method


# virtual methods
.method onShutdown()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mInexactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    invoke-virtual {v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->onShutdown()V

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mExactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    invoke-virtual {v0}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->onShutdown()V

    return-void
.end method

.method public registerExactListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z
    .locals 10
    .param p1, "listener"    # Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "interval"    # J
    .param p5, "triggerAtMillis"    # J
    .param p7, "logTag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mInexactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    invoke-virtual {v0, p1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mExactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->registerListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerExactRepeatingListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z
    .locals 10
    .param p1, "listener"    # Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "interval"    # J
    .param p5, "triggerAtMillis"    # J
    .param p7, "logTag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mInexactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    invoke-virtual {v0, p1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mExactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->registerListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerInexactListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z
    .locals 10
    .param p1, "listener"    # Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "interval"    # J
    .param p5, "triggerAtMillis"    # J
    .param p7, "logTag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mExactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    invoke-virtual {v0, p1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mInexactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->registerListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerInexactRepeatingListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJLjava/lang/String;)Z
    .locals 10
    .param p1, "listener"    # Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "interval"    # J
    .param p5, "triggerAtMillis"    # J
    .param p7, "logTag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mExactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    invoke-virtual {v0, p1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    iget-object v0, p0, Lcom/htc/server/ulog/AlarmScheduler;->mInexactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->registerListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;Landroid/os/Handler;JJZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, "ret":Z
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/htc/server/ulog/AlarmScheduler;->mInexactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    invoke-virtual {v3, p1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/htc/server/ulog/AlarmScheduler;->mExactScheduler:Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;

    invoke-virtual {v3, p1}, Lcom/htc/server/ulog/AlarmScheduler$SchedulerBase;->unregisterListener(Lcom/htc/server/ulog/AlarmScheduler$AlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
