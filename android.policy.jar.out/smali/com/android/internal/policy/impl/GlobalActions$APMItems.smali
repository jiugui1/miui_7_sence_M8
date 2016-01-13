.class public Lcom/android/internal/policy/impl/GlobalActions$APMItems;
.super Ljava/lang/Object;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APMItems"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/android/internal/policy/impl/GlobalActions$APMItems;)Lcom/android/internal/policy/impl/GlobalActions;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    return-object v0
.end method


# virtual methods
.method public getAirplainemModeItem()Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 9

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_airplane_mode_on"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_airplane_mode_off"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "global_actions_toggle_airplane_mode"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "global_actions_airplane_mode_on_status"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "global_actions_airplane_mode_off_status"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$1;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;IIIIIZ)V

    return-object v0
.end method

.method public getBootloaderRebootSubItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .locals 7

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_bootloader"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_bootloader"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_bootloader_summary"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$APMItems$14;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;III)V

    return-object v3
.end method

.method public getHotRebootItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .locals 7

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_hotreboot"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_hotreboot"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_hotreboot_summary"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$APMItems$11;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;III)V

    return-object v3
.end method

.method public getImmersiveModeItem()Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 9

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_immersive_on"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_immersive_off"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_immersivemode_title"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_immersivemode_summary_on"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_immersivemode_summary_off"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$9;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;IIIIIZ)V

    return-object v0
.end method

.method public getKidModeItem()Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "icon_launcher_kidmode"

    const-string v3, "drawable"

    const-string v7, "com.htc.framework"

    invoke-virtual {v0, v1, v3, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "powerOptions_kid_mode"

    const-string v3, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v0, v1, v3, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "powerOptions_kid_mode_on_status"

    const-string v3, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v0, v1, v3, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "powerOptions_kid_mode_off_status"

    const-string v3, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v0, v1, v3, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$3;

    const/4 v7, 0x0

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;IIIIIZ)V

    return-object v0
.end method

.method public getNetworkModeItem()Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 9

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_data_on"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_data_off"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_data_title"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_data_desc_on"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_data_desc_off"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;IIIIIZ)V

    return-object v0
.end method

.method public getPowerOffItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .locals 7

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_power_off_status"

    const-string v5, "string"

    const-string v6, "com.htc.framework"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_power_off"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "global_action_power_off"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$APMItems$4;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;III)V

    return-object v3
.end method

.method public getPowersaverItem()Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 9

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_ps_on"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_ps_off"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_ps_title"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_ps_summary_on"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "apm_ps_summary_off"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$2;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;IIIIIZ)V

    return-object v0
.end method

.method public getRebootItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .locals 7

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_restart"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_restart"

    const-string v5, "string"

    const-string v6, "com.htc.framework"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_restart_status"

    const-string v5, "string"

    const-string v6, "com.htc.framework"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$APMItems$5;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;III)V

    return-object v3
.end method

.method public getRebootSubItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .locals 7

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_restart"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_reboot"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_reboot_summary"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$APMItems$10;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;III)V

    return-object v3
.end method

.method public getRecoveryRebootSubItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .locals 7

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_recovery"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_recovery"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_recovery_summary"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$APMItems$13;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;III)V

    return-object v3
.end method

.method public getSafeRebootSubItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .locals 7

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_safemode"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_safemode"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_safemode_summary"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$APMItems$12;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;III)V

    return-object v3
.end method

.method public getScreenrecordItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .locals 7

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_screenrecord_icon"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_screenrecord"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_screenrecord_summary"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$APMItems$8;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;III)V

    return-object v3
.end method

.method public getScreenshotItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .locals 7

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_screenshot_icon"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_screenshot"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "apm_screenshot_summary"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$APMItems$7;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/internal/policy/impl/GlobalActions$APMItems$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;III)V

    return-object v3
.end method
