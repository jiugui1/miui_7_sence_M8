.class Lcom/android/internal/policy/impl/VenomButtonsManager$20;
.super Ljava/lang/Object;
.source "VenomButtonsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/VenomButtonsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$20;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$20;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/VenomButtonsManager;->flash:Lvenom/common/FlashLight;

    invoke-virtual {v0}, Lvenom/common/FlashLight;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$20;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/VenomButtonsManager;->flash:Lvenom/common/FlashLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->setEnabled(Z)V

    :cond_0
    return-void
.end method
