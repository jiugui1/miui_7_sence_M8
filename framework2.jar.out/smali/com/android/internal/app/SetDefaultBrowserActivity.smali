.class public Lcom/android/internal/app/SetDefaultBrowserActivity;
.super Landroid/app/Activity;
.source "SetDefaultBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;,
        Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 207
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/SetDefaultBrowserActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/SetDefaultBrowserActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/app/SetDefaultBrowserActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private makeOpenBrowserIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v2, "http://www.kikin.com/android"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :goto_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 51
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "http://www.kikin.com/android"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/app/SetDefaultBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kikin.shouldSetDefaultBrowser"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/internal/app/SetDefaultBrowserActivity;->makeOpenBrowserIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/SetDefaultBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/SetDefaultBrowserActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/SetDefaultBrowserActivity;->finish()V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/SetDefaultBrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SetDefaultBrowserActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    new-instance v0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/SetDefaultBrowserActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/internal/app/SetDefaultBrowserActivity;->mAdapter:Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;

    .line 87
    iget-object v0, p0, Lcom/android/internal/app/SetDefaultBrowserActivity;->mAdapter:Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->resolveInfoForComponent(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/SetDefaultBrowserActivity;->mAdapter:Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;

    const-string v2, "com.android.browser"

    invoke-virtual {v1, v2}, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->intentForComponent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/SetDefaultBrowserActivity;->setDefaultBrowser(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method protected setDefaultBrowser(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V
    .locals 23
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/SetDefaultBrowserActivity;->mAdapter:Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    .line 106
    .local v3, "N":I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v19, v0

    .line 107
    .local v19, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 108
    .local v6, "bestMatch":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v3, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/SetDefaultBrowserActivity;->mAdapter:Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v18, v0

    .line 110
    .local v18, "r":Landroid/content/pm/ResolveInfo;
    new-instance v20, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v20, v19, v12

    .line 113
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v6, :cond_0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 108
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 117
    .end local v18    # "r":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v11, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    :cond_2
    const-string v20, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/SetDefaultBrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 127
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v9, "defaultCategoryFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    :cond_3
    const-string v20, "android.intent.category.DEFAULT"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/SetDefaultBrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v9, v6, v1, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 139
    const-string v20, "android.intent.category.DEFAULT"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v20, v0

    const/high16 v21, 0xfff0000

    and-int v7, v20, v21

    .line 141
    .local v7, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 142
    .local v8, "data":Landroid/net/Uri;
    const/high16 v20, 0x600000

    move/from16 v0, v20

    if-ne v7, v0, :cond_4

    .line 143
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 144
    .local v13, "mimeType":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 146
    :try_start_0
    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v13    # "mimeType":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 158
    const/high16 v20, 0x600000

    move/from16 v0, v20

    if-ne v7, v0, :cond_5

    const-string v20, "file"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v20, "content"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 161
    :cond_5
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 162
    const-string v20, "https"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 163
    const-string v20, "ftp"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 168
    .local v5, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_7

    .line 169
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 170
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 171
    .local v4, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v8}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v20

    if-ltz v20, :cond_6

    .line 172
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v17

    .line 173
    .local v17, "port":I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v21

    if-ltz v17, :cond_a

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v17    # "port":I
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v15

    .line 180
    .local v15, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v15, :cond_9

    .line 181
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, "path":Ljava/lang/String;
    :cond_8
    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 183
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PatternMatcher;

    .line 184
    .local v14, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 185
    invoke-virtual {v14}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v14}, Landroid/os/PatternMatcher;->getType()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 193
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v14    # "p":Landroid/os/PatternMatcher;
    .end local v15    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v16    # "path":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/SetDefaultBrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 195
    return-void

    .line 147
    .restart local v13    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 148
    .local v10, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v20, "ResolverActivity"

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 173
    .end local v10    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v13    # "mimeType":Ljava/lang/String;
    .restart local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v17    # "port":I
    :cond_a
    const/16 v20, 0x0

    goto :goto_2
.end method
