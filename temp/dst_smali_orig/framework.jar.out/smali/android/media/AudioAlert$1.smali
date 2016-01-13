.class Landroid/media/AudioAlert$1;
.super Ljava/lang/Object;
.source "AudioAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioAlert;


# direct methods
.method constructor <init>(Landroid/media/AudioAlert;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/AudioAlert$1;->this$0:Landroid/media/AudioAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Landroid/media/AudioAlert$1;->this$0:Landroid/media/AudioAlert;

    # getter for: Landroid/media/AudioAlert;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioAlert;->access$000(Landroid/media/AudioAlert;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/media/AudioAlert;->mBoxChecked:Z
    invoke-static {}, Landroid/media/AudioAlert;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioAlert$1;->this$0:Landroid/media/AudioAlert;

    # getter for: Landroid/media/AudioAlert;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioAlert;->access$000(Landroid/media/AudioAlert;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "because CheckBox is sellected, disable timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/media/AudioAlert;->mTimer:Landroid/media/AudioAlert$Timer;
    invoke-static {}, Landroid/media/AudioAlert;->access$200()Landroid/media/AudioAlert$Timer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAlert$Timer;->interrupt()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/AudioAlert$1;->this$0:Landroid/media/AudioAlert;

    # getter for: Landroid/media/AudioAlert;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioAlert;->access$000(Landroid/media/AudioAlert;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/media/AudioAlert;->mTimer:Landroid/media/AudioAlert$Timer;
    invoke-static {}, Landroid/media/AudioAlert;->access$200()Landroid/media/AudioAlert$Timer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAlert$Timer;->reset()V

    goto :goto_0
.end method
