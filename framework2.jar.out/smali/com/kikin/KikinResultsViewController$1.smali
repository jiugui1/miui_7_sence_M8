.class Lcom/kikin/KikinResultsViewController$1;
.super Ljava/lang/Object;
.source "KikinResultsViewController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kikin/KikinResultsViewController;-><init>(Lcom/kikin/interfaces/KikinCallbackHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kikin/KikinResultsViewController;


# direct methods
.method constructor <init>(Lcom/kikin/KikinResultsViewController;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController$1;->this$0:Lcom/kikin/KikinResultsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController$1;->this$0:Lcom/kikin/KikinResultsViewController;

    # invokes: Lcom/kikin/KikinResultsViewController;->onApplicationWindowSizeChanged()V
    invoke-static {v0}, Lcom/kikin/KikinResultsViewController;->access$000(Lcom/kikin/KikinResultsViewController;)V

    .line 307
    return-void
.end method
