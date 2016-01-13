.class Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;
.super Ljava/util/TimerTask;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "switchDimModeTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method private constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaPluginDLNA;
    .param p2, "x1"    # Landroid/media/MediaPluginDLNA$1;

    .prologue
    .line 696
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;-><init>(Landroid/media/MediaPluginDLNA;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;->this$0:Landroid/media/MediaPluginDLNA;

    # invokes: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1100(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    const/16 v1, 0x1010

    if-ne v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;->this$0:Landroid/media/MediaPluginDLNA;

    # invokes: Landroid/media/MediaPluginDLNA;->enterDimMode()V
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)V

    .line 701
    :cond_0
    return-void
.end method
