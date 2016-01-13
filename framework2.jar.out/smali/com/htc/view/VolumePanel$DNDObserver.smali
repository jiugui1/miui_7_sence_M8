.class Lcom/htc/view/VolumePanel$DNDObserver;
.super Landroid/database/ContentObserver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DNDObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 1

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/htc/view/VolumePanel$DNDObserver;->this$0:Lcom/htc/view/VolumePanel;

    .line 4972
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4973
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 4978
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4979
    iget-object v0, p0, Lcom/htc/view/VolumePanel$DNDObserver;->this$0:Lcom/htc/view/VolumePanel;

    # invokes: Lcom/htc/view/VolumePanel;->getDNDStateInBackgroud()V
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$2600(Lcom/htc/view/VolumePanel;)V

    .line 4980
    return-void
.end method
