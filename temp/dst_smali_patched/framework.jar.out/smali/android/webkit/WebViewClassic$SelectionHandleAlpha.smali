.class Landroid/webkit/WebViewClassic$SelectionHandleAlpha;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleAlpha"
.end annotation


# instance fields
.field private mAlpha:I

.field private mTargetAlpha:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    iput v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebViewClassic;
    .param p2, "x1"    # Landroid/webkit/WebViewClassic$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    return v0
.end method

.method public getTargetAlpha()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    iput p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    return-void
.end method

.method public setTargetAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    iput p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mEnableAnchorAnimation:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$3300(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    iput v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    :cond_0
    return-void
.end method
