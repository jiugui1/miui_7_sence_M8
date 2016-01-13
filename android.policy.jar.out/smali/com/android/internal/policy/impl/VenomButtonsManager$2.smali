.class Lcom/android/internal/policy/impl/VenomButtonsManager$2;
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

    iput-object p1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$2;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$2;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/VenomButtonsManager;->access$0(Lcom/android/internal/policy/impl/VenomButtonsManager;Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$2;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    # getter for: Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressedMode:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->access$1(Lcom/android/internal/policy/impl/VenomButtonsManager;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$2;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    # getter for: Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->access$2(Lcom/android/internal/policy/impl/VenomButtonsManager;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x58

    invoke-static {v0, v1}, Lvenom/common/utils;->sendMediaButtonEvent(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$2;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    # getter for: Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->access$3(Lcom/android/internal/policy/impl/VenomButtonsManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKeyVenom(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$2;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    # getter for: Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->access$2(Lcom/android/internal/policy/impl/VenomButtonsManager;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x55

    invoke-static {v0, v1}, Lvenom/common/utils;->sendMediaButtonEvent(Landroid/content/Context;I)V

    goto :goto_0
.end method
