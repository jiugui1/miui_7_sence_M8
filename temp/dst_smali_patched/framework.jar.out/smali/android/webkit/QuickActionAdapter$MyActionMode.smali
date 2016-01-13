.class Landroid/webkit/QuickActionAdapter$MyActionMode;
.super Landroid/view/ActionMode;
.source "QuickActionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/QuickActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyActionMode"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/QuickActionAdapter;


# direct methods
.method private constructor <init>(Landroid/webkit/QuickActionAdapter;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/QuickActionAdapter$MyActionMode;->this$0:Landroid/webkit/QuickActionAdapter;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/QuickActionAdapter;Landroid/webkit/QuickActionAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/QuickActionAdapter;
    .param p2, "x1"    # Landroid/webkit/QuickActionAdapter$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/QuickActionAdapter$MyActionMode;-><init>(Landroid/webkit/QuickActionAdapter;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter$MyActionMode;->this$0:Landroid/webkit/QuickActionAdapter;

    # getter for: Landroid/webkit/QuickActionAdapter;->mCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/webkit/QuickActionAdapter;->access$300(Landroid/webkit/QuickActionAdapter;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/QuickActionAdapter$MyActionMode;->this$0:Landroid/webkit/QuickActionAdapter;

    # getter for: Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;
    invoke-static {v1}, Landroid/webkit/QuickActionAdapter;->access$200(Landroid/webkit/QuickActionAdapter;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter$MyActionMode;->this$0:Landroid/webkit/QuickActionAdapter;

    # getter for: Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/webkit/QuickActionAdapter;->access$400(Landroid/webkit/QuickActionAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter$MyActionMode;->this$0:Landroid/webkit/QuickActionAdapter;

    # getter for: Landroid/webkit/QuickActionAdapter;->mInflater:Landroid/view/MenuInflater;
    invoke-static {v0}, Landroid/webkit/QuickActionAdapter;->access$500(Landroid/webkit/QuickActionAdapter;)Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/webkit/QuickActionAdapter$MyActionMode;->this$0:Landroid/webkit/QuickActionAdapter;

    # getter for: Landroid/webkit/QuickActionAdapter;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/QuickActionAdapter;->access$100(Landroid/webkit/QuickActionAdapter;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClassic;

    .local v0, "wc":Landroid/webkit/WebViewClassic;
    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->showQuickAction(JZ)V

    :cond_0
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    return-void
.end method
