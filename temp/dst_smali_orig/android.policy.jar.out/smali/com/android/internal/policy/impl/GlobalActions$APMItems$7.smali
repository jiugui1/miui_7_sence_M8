.class Lcom/android/internal/policy/impl/GlobalActions$APMItems$7;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$APMItems;->getScreenshotItem()Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
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

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$7;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$APMItems$7;->this$1:Lcom/android/internal/policy/impl/GlobalActions$APMItems;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$APMItems;->this$0:Lcom/android/internal/policy/impl/GlobalActions;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$APMItems;->access$0(Lcom/android/internal/policy/impl/GlobalActions$APMItems;)Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions;->takeScreenshot()V

    return-void
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
