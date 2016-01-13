.class Landroid/webkit/QuickActionsHelper$1;
.super Ljava/lang/Object;
.source "QuickActionsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/QuickActionsHelper;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/QuickActionsHelper;


# direct methods
.method constructor <init>(Landroid/webkit/QuickActionsHelper;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Landroid/webkit/QuickActionsHelper$1;->this$0:Landroid/webkit/QuickActionsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$1;->this$0:Landroid/webkit/QuickActionsHelper;

    # getter for: Landroid/webkit/QuickActionsHelper;->mPopupContent:Landroid/view/View;
    invoke-static {v0}, Landroid/webkit/QuickActionsHelper;->access$000(Landroid/webkit/QuickActionsHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    return-void
.end method
