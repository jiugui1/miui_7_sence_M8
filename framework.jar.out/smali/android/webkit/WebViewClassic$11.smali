.class Landroid/webkit/WebViewClassic$11;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->acquireReleaseWakeLock(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;I)V
    .locals 0

    .prologue
    .line 7794
    iput-object p1, p0, Landroid/webkit/WebViewClassic$11;->this$0:Landroid/webkit/WebViewClassic;

    iput p2, p0, Landroid/webkit/WebViewClassic$11;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7796
    iget-object v0, p0, Landroid/webkit/WebViewClassic$11;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    iget v1, p0, Landroid/webkit/WebViewClassic$11;->val$level:I

    invoke-static {v0, v1}, Landroid/webkit/WebViewPerfUtil;->releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 7797
    return-void
.end method
