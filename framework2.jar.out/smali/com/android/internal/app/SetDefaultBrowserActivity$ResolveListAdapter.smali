.class final Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;
.super Ljava/lang/Object;
.source "SetDefaultBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SetDefaultBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/SetDefaultBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/SetDefaultBrowserActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;)V
    .locals 15
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/SetDefaultBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 217
    if-nez p5, :cond_0

    .line 218
    # getter for: Lcom/android/internal/app/SetDefaultBrowserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/app/SetDefaultBrowserActivity;->access$100(Lcom/android/internal/app/SetDefaultBrowserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x10040

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p5

    .line 223
    :cond_0
    if-eqz p5, :cond_d

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "N":I
    if-lez v7, :cond_d

    .line 226
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 227
    .local v5, "r0":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_3

    .line 228
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 229
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    iget v1, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v13, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v13, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_2

    .line 231
    :cond_1
    :goto_1
    if-ge v9, v7, :cond_2

    .line 232
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 233
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 227
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 237
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v1, 0x1

    if-le v7, v1, :cond_4

    .line 238
    new-instance v12, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    # getter for: Lcom/android/internal/app/SetDefaultBrowserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/app/SetDefaultBrowserActivity;->access$100(Lcom/android/internal/app/SetDefaultBrowserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 240
    .local v12, "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    move-object/from16 v0, p5

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 243
    .end local v12    # "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 246
    if-eqz p4, :cond_8

    .line 247
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p4

    array-length v1, v0

    if-ge v9, v1, :cond_8

    .line 248
    aget-object v10, p4, v9

    .line 249
    .local v10, "ii":Landroid/content/Intent;
    if-nez v10, :cond_5

    .line 247
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 252
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/SetDefaultBrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 254
    .local v8, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v8, :cond_6

    .line 255
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 259
    :cond_6
    new-instance v13, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 260
    .restart local v13    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v8, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 261
    instance-of v1, v10, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_7

    move-object v11, v10

    .line 262
    check-cast v11, Landroid/content/pm/LabeledIntent;

    .line 263
    .local v11, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 264
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v13, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 265
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v13, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 266
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v13, Landroid/content/pm/ResolveInfo;->icon:I

    .line 268
    .end local v11    # "li":Landroid/content/pm/LabeledIntent;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v2, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v13, v10}, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/SetDefaultBrowserActivity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 274
    .end local v8    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v10    # "ii":Landroid/content/Intent;
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 275
    .restart local v5    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 276
    .local v3, "start":I
    # getter for: Lcom/android/internal/app/SetDefaultBrowserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/app/SetDefaultBrowserActivity;->access$100(Lcom/android/internal/app/SetDefaultBrowserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 277
    .local v6, "r0Label":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    :goto_4
    if-ge v9, v7, :cond_c

    .line 278
    if-nez v6, :cond_9

    .line 279
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 281
    :cond_9
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 282
    .restart local v13    # "ri":Landroid/content/pm/ResolveInfo;
    # getter for: Lcom/android/internal/app/SetDefaultBrowserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/app/SetDefaultBrowserActivity;->access$100(Lcom/android/internal/app/SetDefaultBrowserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 283
    .local v14, "riLabel":Ljava/lang/CharSequence;
    if-nez v14, :cond_a

    .line 284
    iget-object v1, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 286
    :cond_a
    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 277
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 289
    :cond_b
    add-int/lit8 v4, v9, -0x1

    move-object v1, p0

    move-object/from16 v2, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 290
    move-object v5, v13

    .line 291
    move-object v6, v14

    .line 292
    move v3, v9

    goto :goto_5

    .line 295
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v14    # "riLabel":Ljava/lang/CharSequence;
    :cond_c
    add-int/lit8 v4, v7, -0x1

    move-object v1, p0

    move-object/from16 v2, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 297
    .end local v3    # "start":I
    .end local v5    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v6    # "r0Label":Ljava/lang/CharSequence;
    .end local v7    # "N":I
    .end local v9    # "i":I
    :cond_d
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 14
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v10, p3, p2

    add-int/lit8 v7, v10, 0x1

    .line 303
    .local v7, "num":I
    const/4 v10, 0x1

    if-ne v7, v10, :cond_1

    .line 305
    iget-object v10, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v11, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;

    iget-object v12, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/SetDefaultBrowserActivity;

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-direct {v11, v12, v0, v13}, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/SetDefaultBrowserActivity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_0
    return-void

    .line 307
    :cond_1
    const/4 v9, 0x0

    .line 308
    .local v9, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/SetDefaultBrowserActivity;

    # getter for: Lcom/android/internal/app/SetDefaultBrowserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/android/internal/app/SetDefaultBrowserActivity;->access$100(Lcom/android/internal/app/SetDefaultBrowserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 309
    .local v8, "startApp":Ljava/lang/CharSequence;
    if-nez v8, :cond_2

    .line 310
    const/4 v9, 0x1

    .line 312
    :cond_2
    if-nez v9, :cond_5

    .line 314
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 316
    .local v2, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v3, p2, 0x1

    .local v3, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v3, v0, :cond_4

    .line 318
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 319
    .local v5, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/SetDefaultBrowserActivity;

    # getter for: Lcom/android/internal/app/SetDefaultBrowserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/android/internal/app/SetDefaultBrowserActivity;->access$100(Lcom/android/internal/app/SetDefaultBrowserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 320
    .local v4, "jApp":Ljava/lang/CharSequence;
    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 321
    :cond_3
    const/4 v9, 0x1

    .line 328
    .end local v4    # "jApp":Ljava/lang/CharSequence;
    .end local v5    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 330
    .end local v2    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v3    # "j":I
    :cond_5
    move/from16 v6, p2

    .local v6, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v6, v0, :cond_0

    .line 331
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 332
    .local v1, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_7

    .line 334
    iget-object v10, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v11, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;

    iget-object v12, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/SetDefaultBrowserActivity;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v1, v13}, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/SetDefaultBrowserActivity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 324
    .end local v1    # "add":Landroid/content/pm/ResolveInfo;
    .end local v6    # "k":I
    .restart local v2    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v3    # "j":I
    .restart local v4    # "jApp":Ljava/lang/CharSequence;
    .restart local v5    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    .end local v2    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v3    # "j":I
    .end local v4    # "jApp":Ljava/lang/CharSequence;
    .end local v5    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "k":I
    :cond_7
    iget-object v10, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v11, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;

    iget-object v12, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/SetDefaultBrowserActivity;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v1, v13}, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/SetDefaultBrowserActivity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public intentForComponent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 358
    iget-object v5, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-object v4

    .line 362
    :cond_1
    const/4 v1, 0x0

    .line 364
    .local v1, "dri":Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;
    iget-object v5, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;

    .line 365
    .local v3, "info":Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;
    iget-object v5, v3, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 366
    move-object v1, v3

    goto :goto_1

    .line 370
    .end local v3    # "info":Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;
    :cond_3
    if-eqz v1, :cond_0

    .line 373
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_2
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 375
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x3000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    iget-object v5, v1, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 378
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 373
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_2
.end method

.method public resolveInfoForComponent(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v3, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-object v2

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;

    .line 349
    .local v1, "info":Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;
    iget-object v3, v1, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    iget-object v2, v1, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
