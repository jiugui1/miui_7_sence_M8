.class public abstract Landroid/webkit/WebViewClassic$WVInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "WVInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 235
    iput-object p1, p0, Landroid/webkit/WebViewClassic$WVInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    .line 236
    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 237
    return-void
.end method


# virtual methods
.method public abstract getImeOptions()I
.end method

.method public abstract getInputType()I
.end method

.method public abstract getIsAutoFillable()Z
.end method

.method public abstract initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V
.end method

.method public abstract replaceSelection(Ljava/lang/CharSequence;)V
.end method

.method public abstract restartInput()V
.end method

.method public abstract setAutoFillable(I)V
.end method

.method public abstract setTextAndKeepSelection(Ljava/lang/CharSequence;)V
.end method

.method public abstract setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
.end method
