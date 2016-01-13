.class Lcom/android/internal/policy/impl/GlobalActions$APMItems$9;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$APMItems;->getImmersiveModeItem()Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
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

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$9;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

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
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$9;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$9;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$APMItems;->this$0:Lcom/android/internal/policy/impl/GlobalActions;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->access$0(Lcom/android/internal/policy/impl/GlobalActions$APMItems;)Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$9;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->setImmersiveModeState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$9;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$APMItems;->this$0:Lcom/android/internal/policy/impl/GlobalActions;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->access$0(Lcom/android/internal/policy/impl/GlobalActions$APMItems;)Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_immersive_mode"

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$9;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

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
