.class final Landroid/webkit/HTML5Audio$TimeupdateTask;
.super Ljava/util/TimerTask;
.source "HTML5Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeupdateTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5Audio;


# direct methods
.method private constructor <init>(Landroid/webkit/HTML5Audio;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Landroid/webkit/HTML5Audio$TimeupdateTask;->this$0:Landroid/webkit/HTML5Audio;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/HTML5Audio;Landroid/webkit/HTML5Audio$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/HTML5Audio;
    .param p2, "x1"    # Landroid/webkit/HTML5Audio$1;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/webkit/HTML5Audio$TimeupdateTask;-><init>(Landroid/webkit/HTML5Audio;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/webkit/HTML5Audio$TimeupdateTask;->this$0:Landroid/webkit/HTML5Audio;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5Audio;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    return-void
.end method