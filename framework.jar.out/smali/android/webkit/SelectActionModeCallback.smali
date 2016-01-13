.class Landroid/webkit/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/webkit/SelectionCallback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/SelectActionModeCallback$KikinOnOff;
    }
.end annotation


# static fields
.field private static final BUTTON_ID_COPY:I = 0x1020021

.field private static final BUTTON_ID_CUT:I = 0x1020020

.field private static final BUTTON_ID_PASTE:I = 0x1020022

.field private static final BUTTON_ID_QUICKLOOKUP:I = 0x1

.field private static final BUTTON_ID_SELECTALL:I = 0x1020393

.field private static final BUTTON_ID_SHARE:I = 0x1020394

.field private static final BUTTON_ID_WEBSEARCH:I = 0x1020396

.field private static final MAX_SHARE_CHAR_LIMIT:I = 0x249f0


# instance fields
.field icon_copy:I

.field icon_cut:I

.field icon_paste:I

.field icon_selectall:I

.field icon_share:I

.field icon_websearch:I

.field private isHtcStyle:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mCanWebSearch:Z

.field private mHandlePos:[I

.field private mIsTextSelected:Z

.field private mKikinOnOff:Landroid/webkit/SelectActionModeCallback$KikinOnOff;

.field private mOldHandlePos:[I

.field private mShouldKillKikinResultsContainer:I

.field private mShouldRestoreKikinResultsContainer:Z

.field private mShouldShowKikinResulsContainer:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 306
    iput-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->isHtcStyle:Z

    .line 307
    iput-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->mCanWebSearch:Z

    .line 310
    const v0, 0x3020034

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_websearch:I

    .line 311
    const v0, 0x302001f

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_copy:I

    .line 312
    const v0, 0x3020028

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_paste:I

    .line 313
    const v0, 0x3020020

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_cut:I

    .line 314
    const v0, 0x20800c4

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_share:I

    .line 315
    const v0, 0x3020035

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_selectall:I

    .line 325
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mOldHandlePos:[I

    .line 326
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mHandlePos:[I

    .line 408
    iput-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldRestoreKikinResultsContainer:Z

    .line 410
    iput v1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    .line 451
    iput-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldShowKikinResulsContainer:Z

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mKikinOnOff:Landroid/webkit/SelectActionModeCallback$KikinOnOff;

    .line 466
    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "visible"    # Z
    .param p3, "resourceId"    # I

    .prologue
    .line 299
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 300
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    iget-object v1, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 74
    :cond_0
    iget-object v1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->isKikinEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getKikinResultsViewController()Lcom/kikin/KikinResultsViewController;

    move-result-object v0

    .line 82
    .local v0, "kikinResultsViewContainer":Lcom/kikin/KikinResultsViewController;
    if-eqz v0, :cond_1

    .line 83
    iget v1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/kikin/KikinResultsViewController;->hide(Z)Z

    .line 84
    :cond_1
    invoke-virtual {p0, v2}, Landroid/webkit/SelectActionModeCallback;->setShouldKillKikinResultsContainer(Z)V

    .line 87
    .end local v0    # "kikinResultsViewContainer":Lcom/kikin/KikinResultsViewController;
    :cond_2
    iget-object v1, p0, Landroid/webkit/SelectActionModeCallback;->mKikinOnOff:Landroid/webkit/SelectActionModeCallback$KikinOnOff;

    if-eqz v1, :cond_3

    .line 88
    iget-object v1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/SelectActionModeCallback;->mKikinOnOff:Landroid/webkit/SelectActionModeCallback$KikinOnOff;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/SelectActionModeCallback;->mKikinOnOff:Landroid/webkit/SelectActionModeCallback$KikinOnOff;

    .line 92
    :cond_3
    return-void

    .line 83
    .restart local v0    # "kikinResultsViewContainer":Lcom/kikin/KikinResultsViewController;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const v9, 0x30701bc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 183
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 290
    :goto_0
    return v5

    .line 185
    :sswitch_0
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 186
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    :goto_1
    move v5, v6

    .line 290
    goto :goto_0

    .line 190
    :sswitch_1
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 192
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->isKikinEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Lcom/kikin/analytics/AnalyticsTrackerEvent;->COPY:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v5, v7}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 205
    :sswitch_2
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 206
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 210
    :sswitch_3
    const/4 v4, 0x0

    .line 213
    .local v4, "selection":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 222
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 223
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const v8, 0x249f0

    if-le v7, v8, :cond_3

    .line 224
    iget-object v7, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 237
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 239
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->isKikinEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Lcom/kikin/analytics/AnalyticsTrackerEvent;->SHARE:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v5, v7}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    goto :goto_1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    iget-object v7, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 229
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_3
    new-instance v2, Landroid/webkit/HTCQuickSearch;

    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-direct {v2, v5}, Landroid/webkit/HTCQuickSearch;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 230
    .local v2, "quickSearch":Landroid/webkit/HTCQuickSearch;
    if-eqz v2, :cond_2

    .line 231
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/webkit/HTCQuickSearch;->shareContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 246
    .end local v2    # "quickSearch":Landroid/webkit/HTCQuickSearch;
    .end local v4    # "selection":Ljava/lang/String;
    :sswitch_4
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectAll()V

    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_1

    .line 254
    :sswitch_5
    iget-object v7, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "sel":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 256
    iget-object v7, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7, v3, v5}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    .line 258
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->isKikinEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Lcom/kikin/analytics/AnalyticsTrackerEvent;->FIND:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v5, v7}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    goto/16 :goto_1

    .line 265
    .end local v3    # "sel":Ljava/lang/String;
    :sswitch_6
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->isKikinEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 270
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Lcom/kikin/analytics/AnalyticsTrackerEvent;->WEB_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v5, v7}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    .line 274
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, "i":Landroid/content/Intent;
    const-string v5, "new_search"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const-string v5, "query"

    iget-object v7, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-nez v5, :cond_5

    .line 278
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    :cond_5
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->isKikinEnable()Z

    move-result v5

    if-nez v5, :cond_6

    .line 283
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 284
    :cond_6
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x1020393 -> :sswitch_4
        0x1020394 -> :sswitch_3
        0x1020395 -> :sswitch_5
        0x1020396 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 13
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const/high16 v9, 0x1140000

    invoke-virtual {v8, v9, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 100
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1, v11}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 113
    const v8, 0x1020393

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 114
    .local v4, "selectAll":Landroid/view/MenuItem;
    if-eqz v4, :cond_1

    .line 116
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 118
    .local v6, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v8, 0x3

    invoke-virtual {v6, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 121
    .local v5, "selectAllIconId":I
    if-eqz v5, :cond_0

    .line 122
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 124
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    .end local v5    # "selectAllIconId":I
    .end local v6    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v7, "target":Landroid/content/Intent;
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 129
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/high16 v8, 0x10000

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, "mainActivitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 131
    iput-boolean v12, p0, Landroid/webkit/SelectActionModeCallback;->mCanWebSearch:Z

    .line 135
    :cond_2
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mHandlePos:[I

    invoke-static {v8, v11}, Ljava/util/Arrays;->fill([II)V

    .line 136
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mOldHandlePos:[I

    const/4 v9, -0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    .line 138
    invoke-virtual {p0, p1, p2}, Landroid/webkit/SelectActionModeCallback;->setupItemsVisibility(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 139
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 142
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->isKikinEnable()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 145
    invoke-virtual {p1, v11}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 149
    iget-boolean v8, p0, Landroid/webkit/SelectActionModeCallback;->mShouldShowKikinResulsContainer:Z

    if-eqz v8, :cond_3

    .line 151
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getKikinResultsViewController()Lcom/kikin/KikinResultsViewController;

    move-result-object v8

    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallback;->mShouldRestoreKikinResultsContainer:Z

    sget-object v10, Lcom/kikin/KikinBarState;->HALF_OPEN:Lcom/kikin/KikinBarState;

    invoke-virtual {v8, p1, v9, v10, v12}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V

    .line 153
    iput-boolean v11, p0, Landroid/webkit/SelectActionModeCallback;->mShouldRestoreKikinResultsContainer:Z

    .line 154
    iput-boolean v11, p0, Landroid/webkit/SelectActionModeCallback;->mShouldShowKikinResulsContainer:Z

    .line 158
    :cond_3
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mKikinOnOff:Landroid/webkit/SelectActionModeCallback$KikinOnOff;

    if-nez v8, :cond_4

    .line 159
    new-instance v8, Landroid/webkit/SelectActionModeCallback$KikinOnOff;

    invoke-direct {v8, p0}, Landroid/webkit/SelectActionModeCallback$KikinOnOff;-><init>(Landroid/webkit/SelectActionModeCallback;)V

    iput-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mKikinOnOff:Landroid/webkit/SelectActionModeCallback$KikinOnOff;

    .line 161
    new-instance v1, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {v1, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v8, "package"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 164
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/SelectActionModeCallback;->mKikinOnOff:Landroid/webkit/SelectActionModeCallback$KikinOnOff;

    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_4
    return v12
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 295
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 296
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Landroid/webkit/SelectActionModeCallback;->setupItemsVisibility(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method setCabTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    :cond_0
    return-void
.end method

.method public setHtcStyle(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 329
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->isHtcStyle:Z

    .line 330
    return-void
.end method

.method setShouldKillKikinResultsContainer(Z)V
    .locals 2
    .param p1, "shouldKillKikinResultsContainer"    # Z

    .prologue
    .line 447
    iget v1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    .line 448
    iget v0, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    .line 449
    :cond_0
    return-void

    .line 447
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setShouldRestoreKikinResultsContainer(Z)V
    .locals 0
    .param p1, "shouldRestoreKikinResultsContainer"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldRestoreKikinResultsContainer:Z

    .line 438
    return-void
.end method

.method setShouldShowKikinResultsContainer(Z)V
    .locals 0
    .param p1, "shouldShowKikinResultsContainer"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldShowKikinResulsContainer:Z

    .line 461
    return-void
.end method

.method public setTextSelected(Z)V
    .locals 0
    .param p1, "isTextSelected"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 65
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/SelectActionModeCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 57
    return-void
.end method

.method public setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebViewClassic;

    .prologue
    .line 60
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    .line 61
    return-void
.end method

.method public setupItemsVisibility(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 15
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 333
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    if-nez v11, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v12, p0, Landroid/webkit/SelectActionModeCallback;->mHandlePos:[I

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 338
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mHandlePos:[I

    iget-object v12, p0, Landroid/webkit/SelectActionModeCallback;->mOldHandlePos:[I

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 341
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mOldHandlePos:[I

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/webkit/SelectActionModeCallback;->mHandlePos:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    .line 342
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mOldHandlePos:[I

    const/4 v12, 0x1

    iget-object v13, p0, Landroid/webkit/SelectActionModeCallback;->mHandlePos:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    aput v13, v11, v12

    .line 343
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mOldHandlePos:[I

    const/4 v12, 0x2

    iget-object v13, p0, Landroid/webkit/SelectActionModeCallback;->mHandlePos:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    aput v13, v11, v12

    .line 344
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mOldHandlePos:[I

    const/4 v12, 0x3

    iget-object v13, p0, Landroid/webkit/SelectActionModeCallback;->mHandlePos:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    aput v13, v11, v12

    .line 347
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_9

    const/4 v10, 0x1

    .line 348
    .local v10, "isSelectionEmpty":Z
    :goto_1
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "clipboard"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ClipboardManager;

    move-object v7, v11

    check-cast v7, Landroid/content/ClipboardManager;

    .line 350
    .local v7, "cm":Landroid/content/ClipboardManager;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v9

    .line 351
    .local v9, "isFocusable":Z
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v8

    .line 352
    .local v8, "isEditable":Z
    if-eqz v8, :cond_a

    invoke-virtual {v7}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v9, :cond_a

    const/4 v4, 0x1

    .line 354
    .local v4, "canPaste":Z
    :goto_2
    if-eqz v4, :cond_2

    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getEnableImageCopyPaste()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v7}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v7}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    invoke-virtual {v7}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->selectionContainImage(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 361
    const/4 v4, 0x0

    .line 363
    :cond_2
    if-nez v8, :cond_b

    if-eqz v9, :cond_b

    const/4 v3, 0x1

    .line 364
    .local v3, "canFind":Z
    :goto_3
    if-eqz v8, :cond_c

    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    if-eqz v11, :cond_c

    if-eqz v9, :cond_c

    const/4 v2, 0x1

    .line 365
    .local v2, "canCut":Z
    :goto_4
    iget-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 366
    .local v1, "canCopy":Z
    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallback;->mCanWebSearch:Z

    if-eqz v11, :cond_d

    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    if-eqz v11, :cond_d

    if-nez v10, :cond_d

    const/4 v6, 0x1

    .line 367
    .local v6, "canWebSearch":Z
    :goto_5
    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    if-eqz v11, :cond_e

    if-nez v10, :cond_e

    const/4 v5, 0x1

    .line 368
    .local v5, "canShare":Z
    :goto_6
    const v11, 0x1020395

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3, v11}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 369
    const v11, 0x1020022

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4, v11}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 370
    const v11, 0x1020020

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2, v11}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 371
    const v11, 0x1020021

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1, v11}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 372
    const v11, 0x1020396

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6, v11}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 373
    const v11, 0x1020394

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v5, v11}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 376
    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallback;->isHtcStyle:Z

    if-eqz v11, :cond_0

    .line 378
    if-eqz v5, :cond_3

    .line 379
    const v11, 0x1020394

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 380
    :cond_3
    if-eqz v3, :cond_4

    .line 381
    const v11, 0x1020395

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 382
    :cond_4
    if-eqz v4, :cond_5

    .line 383
    const v11, 0x1020022

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 384
    :cond_5
    if-eqz v2, :cond_6

    .line 385
    const v11, 0x1020020

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 386
    :cond_6
    if-eqz v1, :cond_7

    .line 387
    const v11, 0x1020021

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 388
    :cond_7
    if-eqz v6, :cond_8

    .line 389
    const v11, 0x1020396

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 392
    :cond_8
    const v11, 0x1020021

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iget v12, p0, Landroid/webkit/SelectActionModeCallback;->icon_copy:I

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 393
    const v11, 0x1020394

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iget v12, p0, Landroid/webkit/SelectActionModeCallback;->icon_share:I

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 394
    const v11, 0x1020396

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iget v12, p0, Landroid/webkit/SelectActionModeCallback;->icon_websearch:I

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 395
    const v11, 0x1020393

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iget v12, p0, Landroid/webkit/SelectActionModeCallback;->icon_selectall:I

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 396
    const v11, 0x1020020

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iget v12, p0, Landroid/webkit/SelectActionModeCallback;->icon_cut:I

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 397
    const v11, 0x1020022

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iget v12, p0, Landroid/webkit/SelectActionModeCallback;->icon_paste:I

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 399
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    iget v11, v11, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 400
    const/4 v11, 0x0

    const v12, 0x1020395

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11, v12}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    goto/16 :goto_0

    .line 347
    .end local v1    # "canCopy":Z
    .end local v2    # "canCut":Z
    .end local v3    # "canFind":Z
    .end local v4    # "canPaste":Z
    .end local v5    # "canShare":Z
    .end local v6    # "canWebSearch":Z
    .end local v7    # "cm":Landroid/content/ClipboardManager;
    .end local v8    # "isEditable":Z
    .end local v9    # "isFocusable":Z
    .end local v10    # "isSelectionEmpty":Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 352
    .restart local v7    # "cm":Landroid/content/ClipboardManager;
    .restart local v8    # "isEditable":Z
    .restart local v9    # "isFocusable":Z
    .restart local v10    # "isSelectionEmpty":Z
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 363
    .restart local v4    # "canPaste":Z
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 364
    .restart local v3    # "canFind":Z
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 366
    .restart local v1    # "canCopy":Z
    .restart local v2    # "canCut":Z
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 367
    .restart local v6    # "canWebSearch":Z
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_6
.end method
