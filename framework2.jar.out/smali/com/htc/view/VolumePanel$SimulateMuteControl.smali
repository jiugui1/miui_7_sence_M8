.class Lcom/htc/view/VolumePanel$SimulateMuteControl;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimulateMuteControl"
.end annotation


# instance fields
.field keyBeforeMute:Ljava/lang/String;

.field keyBeforeMuteForHeadset:Ljava/lang/String;

.field keyMuteByUser:Ljava/lang/String;

.field keyMuteByUserForHeadset:Ljava/lang/String;

.field msg:I

.field streamType:I

.field final synthetic this$0:Lcom/htc/view/VolumePanel;

.field userSetNotificationsMute:Z

.field userSetNotificationsMuteForHeadset:Z

.field volumeBeforeMute:I

.field volumeBeforeMuteForHeadset:I


# direct methods
.method private constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/htc/view/VolumePanel$SimulateMuteControl;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/view/VolumePanel;Lcom/htc/view/VolumePanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htc/view/VolumePanel;
    .param p2, "x1"    # Lcom/htc/view/VolumePanel$1;

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel$SimulateMuteControl;-><init>(Lcom/htc/view/VolumePanel;)V

    return-void
.end method
