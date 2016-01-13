.class Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$APMItems;->getNetworkModeItem()Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
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

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

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
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$APMItems;->this$0:Lcom/android/internal/policy/impl/GlobalActions;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->access$0(Lcom/android/internal/policy/impl/GlobalActions$APMItems;)Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->setNetworkState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$APMItems;->this$0:Lcom/android/internal/policy/impl/GlobalActions;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->access$0(Lcom/android/internal/policy/impl/GlobalActions$APMItems;)Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions;->getNetworkState()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$APMItems;->this$0:Lcom/android/internal/policy/impl/GlobalActions;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->access$0(Lcom/android/internal/policy/impl/GlobalActions$APMItems;)Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions;->getNetworkState()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

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
