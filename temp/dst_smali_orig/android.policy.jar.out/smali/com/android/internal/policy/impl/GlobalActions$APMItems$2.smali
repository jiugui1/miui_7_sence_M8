.class Lcom/android/internal/policy/impl/GlobalActions$APMItems$2;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$APMItems;->getPowersaverItem()Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;IIIIIZ)V
    .locals 7

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$2;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$APMItems;->this$0:Lcom/android/internal/policy/impl/GlobalActions;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->access$0(Lcom/android/internal/policy/impl/GlobalActions$APMItems;)Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$2;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->setPowersaverModeState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOn"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.htcpowermanager"

    const-string v2, "com.htc.htcpowermanager.extremepowersaver.ExtremePowerSaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.HtcPowerSaver.ExtremeModeManualOff"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.htc.htcpowermanager"

    const-string v2, "com.htc.htcpowermanager.extremepowersaver.ExtremePowerSaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
