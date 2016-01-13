.class Lcom/android/internal/policy/impl/VenomButtonsManager$5;
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

    iput-object p1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$5;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$5;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    # getter for: Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->access$3(Lcom/android/internal/policy/impl/VenomButtonsManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackPressed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$5;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mLongPressBackCancel:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$5;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    const-string v1, "back"

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/impl/VenomButtonsManager;->startAction(Ljava/lang/String;ZI)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/VenomButtonsManager;->access$4(Lcom/android/internal/policy/impl/VenomButtonsManager;Ljava/lang/String;ZI)V

    goto :goto_0
.end method
