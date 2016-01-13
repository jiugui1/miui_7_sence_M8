.class public Landroid/webkit/SingleTapQuickActions;
.super Ljava/lang/Object;
.source "SingleTapQuickActions.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;


# static fields
.field private static final BUTTON_ID_OPEN_LINK:I = 0xe

.field private static final BUTTON_ID_PASTE:I = 0x0

.field private static final CUSTOM_CLIP_LABEL:Ljava/lang/String; = "HTC_MODIFIED_CLIPDATA="


# instance fields
.field checkTimeout:Z

.field cm:Landroid/content/ClipboardManager;

.field icon_open_link:Landroid/graphics/drawable/Drawable;

.field icon_paste:Landroid/graphics/drawable/Drawable;

.field private mTappedURL:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebViewClassic;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private resLoaded:Z

.field str_open_link:Ljava/lang/String;

.field str_paste:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Landroid/webkit/SingleTapQuickActions;->checkTimeout:Z

    .line 47
    iput-boolean v1, p0, Landroid/webkit/SingleTapQuickActions;->resLoaded:Z

    return-void
.end method

.method private canPaste()Z
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 131
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 132
    .local v0, "canPaste":Ljava/lang/Boolean;
    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    if-eqz v8, :cond_0

    move v8, v9

    :goto_0
    iget-object v11, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    invoke-virtual {v11}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v11

    and-int/2addr v8, v11

    if-eqz v8, :cond_4

    .line 135
    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getEnableImageCopyPaste()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-le v8, v9, :cond_1

    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v11, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    invoke-virtual {v11}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/webkit/WebViewClassic;->selectionContainImage(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 180
    :goto_1
    return v8

    :cond_0
    move v8, v10

    .line 132
    goto :goto_0

    .line 143
    :cond_1
    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 144
    .local v3, "description":Landroid/content/ClipDescription;
    iget-boolean v8, p0, Landroid/webkit/SingleTapQuickActions;->checkTimeout:Z

    if-eqz v8, :cond_5

    .line 146
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 147
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "label":Ljava/lang/String;
    const-string v8, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 150
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "timestamp":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x7530

    cmp-long v8, v11, v13

    if-gez v8, :cond_2

    .line 153
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 160
    .end local v4    # "label":Ljava/lang/String;
    .end local v7    # "timestamp":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 161
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-ge v8, v9, :cond_6

    .line 162
    :cond_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 180
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v3    # "description":Landroid/content/ClipDescription;
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_1

    .line 158
    .restart local v3    # "description":Landroid/content/ClipDescription;
    :cond_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 164
    .restart local v1    # "clipData":Landroid/content/ClipData;
    :cond_6
    invoke-virtual {v1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 165
    .local v2, "clipItem":Landroid/content/ClipData$Item;
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_9

    :cond_7
    move v6, v9

    .line 166
    .local v6, "noPlainText":Z
    :goto_4
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    :cond_8
    move v5, v9

    .line 168
    .local v5, "noHtmlText":Z
    :goto_5
    const-string v8, "text/plain"

    invoke-virtual {v3, v8}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v6, :cond_b

    .line 169
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .end local v5    # "noHtmlText":Z
    .end local v6    # "noPlainText":Z
    :cond_9
    move v6, v10

    .line 165
    goto :goto_4

    .restart local v6    # "noPlainText":Z
    :cond_a
    move v5, v10

    .line 166
    goto :goto_5

    .line 170
    .restart local v5    # "noHtmlText":Z
    :cond_b
    const-string v8, "text/html"

    invoke-virtual {v3, v8}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 171
    if-eqz v5, :cond_c

    .line 172
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 173
    :cond_c
    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v6, :cond_4

    .line 174
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v1, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :try_start_0
    iget-object v1, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public loadResource(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 57
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x3020028

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/SingleTapQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    .line 58
    const v5, 0x104000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/SingleTapQuickActions;->str_paste:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 64
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .local v4, "target":Landroid/content/Intent;
    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "mainActivitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 67
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 68
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/SingleTapQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    .line 70
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    const v5, 0x204018c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/SingleTapQuickActions;->str_open_link:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 5
    .param p1, "actions"    # Lcom/htc/textselection/ActionMenu;

    .prologue
    const/4 v4, 0x0

    .line 78
    iget-object v1, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, "context":Landroid/content/Context;
    iget-boolean v1, p0, Landroid/webkit/SingleTapQuickActions;->resLoaded:Z

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/SingleTapQuickActions;->resLoaded:Z

    .line 81
    invoke-virtual {p0, v0}, Landroid/webkit/SingleTapQuickActions;->loadResource(Landroid/content/Context;)V

    .line 83
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    check-cast v1, Landroid/content/ClipboardManager;

    iput-object v1, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    .line 87
    :cond_0
    iget-object v1, p0, Landroid/webkit/SingleTapQuickActions;->str_paste:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/SingleTapQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v4, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 88
    const/16 v1, 0xe

    iget-object v2, p0, Landroid/webkit/SingleTapQuickActions;->str_open_link:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/SingleTapQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 89
    return-void
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 11
    .param p1, "actions"    # Lcom/htc/textselection/ActionMenu;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-direct {p0}, Landroid/webkit/SingleTapQuickActions;->canPaste()Z

    move-result v3

    .line 96
    .local v3, "bShowPaste":Z
    const/4 v2, 0x0

    .line 97
    .local v2, "bShowOpenLink":Z
    const-string v7, ""

    iput-object v7, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    .line 99
    iget-object v7, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v4

    .line 100
    .local v4, "hitTest":Landroid/webkit/WebView$HitTestResult;
    if-eqz v4, :cond_1

    iget-object v7, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_0

    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v7

    if-eq v7, v10, :cond_0

    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v7

    if-ne v7, v9, :cond_4

    :cond_0
    move v2, v6

    .line 104
    :goto_0
    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    .line 107
    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v7

    if-ne v7, v10, :cond_5

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mailto:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    .line 117
    :cond_1
    :goto_1
    invoke-interface {p1, v5, v6}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 119
    invoke-interface {p1, v5, v5}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v1

    .line 120
    .local v1, "aPaste":Lcom/htc/textselection/Action;
    const/16 v6, 0xe

    invoke-interface {p1, v5, v6}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 122
    .local v0, "aLink":Lcom/htc/textselection/Action;
    if-eqz v1, :cond_2

    .line 123
    invoke-interface {v1, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 126
    :cond_2
    if-eqz v0, :cond_3

    .line 127
    invoke-interface {v0, v2}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 128
    :cond_3
    return-void

    .end local v0    # "aLink":Lcom/htc/textselection/Action;
    .end local v1    # "aPaste":Lcom/htc/textselection/Action;
    :cond_4
    move v2, v5

    .line 101
    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    goto :goto_1
.end method

.method public onQuickActionItemClicked(I)V
    .locals 1
    .param p1, "actionID"    # I

    .prologue
    .line 186
    sparse-switch p1, :sswitch_data_0

    .line 195
    :goto_0
    iget-object v0, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 196
    return-void

    .line 188
    :sswitch_0
    iget-object v0, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    goto :goto_0

    .line 192
    :sswitch_1
    iget-object v0, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkit/SingleTapQuickActions;->openLink(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebViewClassic;

    .prologue
    .line 50
    iput-object p1, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    .line 51
    return-void
.end method

.method setWebViewCore(Landroid/webkit/WebViewCore;)V
    .locals 0
    .param p1, "webViewCore"    # Landroid/webkit/WebViewCore;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/webkit/SingleTapQuickActions;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 54
    return-void
.end method
