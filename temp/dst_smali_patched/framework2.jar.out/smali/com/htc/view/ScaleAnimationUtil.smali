.class public Lcom/htc/view/ScaleAnimationUtil;
.super Ljava/lang/Object;
.source "ScaleAnimationUtil.java"


# static fields
.field public static final LANDSCAPE:I = 0x3ea

.field public static final PORTRAIT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "ScaleAnimationUtil"

.field private static landDiff:I

.field private static portDiff:I

.field private static regionLand:Landroid/graphics/Rect;

.field private static regionPort:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    sput-object v1, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    sput v0, Lcom/htc/view/ScaleAnimationUtil;->portDiff:I

    sput v0, Lcom/htc/view/ScaleAnimationUtil;->landDiff:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getScaleRegion(Landroid/content/Context;I)Landroid/graphics/Rect;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    sget-object v11, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    if-eqz v11, :cond_2

    sget-object v11, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    if-nez v11, :cond_d

    :cond_2
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    sput-object v11, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    sput-object v11, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    const/4 v8, 0x0

    .local v8, "systemuiResource":Landroid/content/res/Resources;
    const/4 v8, 0x0

    :try_start_0
    const-string v11, "com.android.systemui"

    const/4 v12, 0x4

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_0

    invoke-static {p0}, Lcom/htc/view/NavigationBarConfiguration;->isCustomizedNavigationBar(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_e

    move v1, v10

    .local v1, "hasNavigation":Z
    :goto_2
    if-ne v1, v10, :cond_f

    const-string v10, "thumbnail_transition_portrait_left_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .local v5, "resourceL":I
    const-string v10, "thumbnail_transition_portrait_top_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .local v7, "resourceT":I
    const-string v10, "thumbnail_transition_portrait_right_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .local v6, "resourceR":I
    const-string v10, "thumbnail_transition_portrait_bottom_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, "resourceB":I
    if-eqz v5, :cond_3

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    :cond_3
    if-eqz v7, :cond_4

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    :cond_4
    if-eqz v6, :cond_5

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    :cond_5
    if-eqz v2, :cond_6

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    :cond_6
    const-string v10, "thumbnail_transition_landscape_left_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v10, "thumbnail_transition_landscape_top_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v10, "thumbnail_transition_landscape_right_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v10, "thumbnail_transition_landscape_bottom_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v5, :cond_7

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    :cond_7
    if-eqz v7, :cond_8

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    :cond_8
    if-eqz v6, :cond_9

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    :cond_9
    if-eqz v2, :cond_a

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    :cond_a
    :goto_3
    const-string v10, "thumbnail_transition_portrait_diff"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .local v4, "resourceDiffP":I
    const-string v10, "thumbnail_transition_landscape_diff"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .local v3, "resourceDiffL":I
    if-eqz v4, :cond_b

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sput v10, Lcom/htc/view/ScaleAnimationUtil;->portDiff:I

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sput v10, Lcom/htc/view/ScaleAnimationUtil;->landDiff:I

    :cond_c
    const-string v10, "ScaleAnimationUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateResource[P]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hasNavigation:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " diff:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/htc/view/ScaleAnimationUtil;->portDiff:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "ScaleAnimationUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateResource[L]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hasNavigation:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " diff:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/htc/view/ScaleAnimationUtil;->landDiff:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "hasNavigation":Z
    .end local v2    # "resourceB":I
    .end local v3    # "resourceDiffL":I
    .end local v4    # "resourceDiffP":I
    .end local v5    # "resourceL":I
    .end local v6    # "resourceR":I
    .end local v7    # "resourceT":I
    .end local v8    # "systemuiResource":Landroid/content/res/Resources;
    :cond_d
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object v9, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    goto/16 :goto_0

    .restart local v8    # "systemuiResource":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .local v0, "exception":Ljava/lang/Exception;
    const-string v11, "ScaleAnimationUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!!!!!generate resource fail:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_1

    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    .restart local v1    # "hasNavigation":Z
    :cond_f
    const-string v10, "thumbnail_transition_portrait_left"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "resourceL":I
    const-string v10, "thumbnail_transition_portrait_top"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "resourceT":I
    const-string v10, "thumbnail_transition_portrait_right"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "resourceR":I
    const-string v10, "thumbnail_transition_portrait_bottom"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "resourceB":I
    if-eqz v5, :cond_10

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    :cond_10
    if-eqz v7, :cond_11

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    :cond_11
    if-eqz v6, :cond_12

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    :cond_12
    if-eqz v2, :cond_13

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    :cond_13
    const-string v10, "thumbnail_transition_landscape_left"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v10, "thumbnail_transition_landscape_top"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v10, "thumbnail_transition_landscape_right"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v10, "thumbnail_transition_landscape_bottom"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v5, :cond_14

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    :cond_14
    if-eqz v7, :cond_15

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    :cond_15
    if-eqz v6, :cond_16

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    :cond_16
    if-eqz v2, :cond_a

    sget-object v10, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .end local v1    # "hasNavigation":Z
    .end local v2    # "resourceB":I
    .end local v5    # "resourceL":I
    .end local v6    # "resourceR":I
    .end local v7    # "resourceT":I
    .end local v8    # "systemuiResource":Landroid/content/res/Resources;
    :pswitch_1
    sget-object v9, Lcom/htc/view/ScaleAnimationUtil;->regionLand:Landroid/graphics/Rect;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final getScaleRegion2(Landroid/content/Context;I)Landroid/graphics/Rect;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    new-instance v1, Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/htc/view/ScaleAnimationUtil;->getScaleRegion(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v1, "refineRegion":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/htc/view/NavigationBarConfiguration;->isCustomizedNavigationBar(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .local v0, "hasNavigation":Z
    :goto_0
    if-ne v0, v2, :cond_0

    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/htc/view/ScaleAnimationUtil;->portDiff:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_1
    return-object v1

    .end local v0    # "hasNavigation":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "hasNavigation":Z
    :cond_2
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/htc/view/ScaleAnimationUtil;->landDiff:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method
