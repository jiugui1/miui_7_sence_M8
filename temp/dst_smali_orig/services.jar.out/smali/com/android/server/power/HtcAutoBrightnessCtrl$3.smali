.class Lcom/android/server/power/HtcAutoBrightnessCtrl$3;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$3;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "HABCtrl"

    const-string v1, "DD Off Task"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$3;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/HtcAutoBrightnessCtrl;->setDayDreamMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/power/HtcAutoBrightnessCtrl;Z)V

    return-void
.end method