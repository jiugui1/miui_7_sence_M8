.class Lcom/android/internal/policy/impl/GlobalActions$APMItems$4;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$APMItems;->getPowerOffItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$APMItems;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$4;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPress()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$4;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_fastboot"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$4;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/app/HtcShutdownThread;->hibernate(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$4;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->context:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
