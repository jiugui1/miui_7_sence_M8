.class Landroid/webkit/QuickActionsHelper$2;
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
    iput-object p1, p0, Landroid/webkit/QuickActionsHelper$2;->this$0:Landroid/webkit/QuickActionsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper$2;->this$0:Landroid/webkit/QuickActionsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->show(I)V

    return-void
.end method
