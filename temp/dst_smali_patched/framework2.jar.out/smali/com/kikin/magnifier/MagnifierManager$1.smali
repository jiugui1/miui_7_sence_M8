.class final Lcom/kikin/magnifier/MagnifierManager$1;
.super Ljava/lang/Object;
.source "MagnifierManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kikin/magnifier/MagnifierManager;->show(Landroid/view/View;Lcom/kikin/KikinResultsViewController;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    # setter for: Lcom/kikin/magnifier/MagnifierManager;->mMagnifierWindow:Lcom/kikin/magnifier/MagnifierWindow;
    invoke-static {v0}, Lcom/kikin/magnifier/MagnifierManager;->access$002(Lcom/kikin/magnifier/MagnifierWindow;)Lcom/kikin/magnifier/MagnifierWindow;

    return-void
.end method
