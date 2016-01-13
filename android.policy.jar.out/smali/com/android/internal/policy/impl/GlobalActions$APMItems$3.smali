.class Lcom/android/internal/policy/impl/GlobalActions$APMItems$3;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$APMItems;->getKidModeItem()Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
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

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

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
    .locals 0

    return-void
.end method

.method onToggle(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$3;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$APMItems;->this$0:Lcom/android/internal/policy/impl/GlobalActions;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->access$0(Lcom/android/internal/policy/impl/GlobalActions$APMItems;)Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->confirmApmKidMode(Z)V

    return-void
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
