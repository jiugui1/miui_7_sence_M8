.class Lcom/android/internal/policy/impl/PhoneWindowManager$HandleMenuRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleMenuRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleMenuRunnable;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$HandleMenuRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleMenuRunnable;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleMenuRunnable;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVenomButtons:Lcom/android/internal/policy/impl/VenomButtonsManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$111(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/VenomButtonsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->emulateMenuKey()V

    return-void
.end method
