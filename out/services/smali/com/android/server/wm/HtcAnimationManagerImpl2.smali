.class Lcom/android/server/wm/HtcAnimationManagerImpl2;
.super Ljava/lang/Object;
.source "HtcAnimationManagerImpl2.java"

# interfaces
.implements Lcom/android/server/wm/HtcAnimationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;
    }
.end annotation


# static fields
.field static final FADE_DURATION:I = 0x96

.field static final SCALE_DOWN_DURATION:I = 0xc8


# instance fields
.field mContext:Landroid/content/Context;

.field mExcludeFromRecent:Z

.field mIsOverrideAppTranAnim:Z

.field mIsRecentAppInvolve:Z

.field mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsOverrideAppTranAnim:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsRecentAppInvolve:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mExcludeFromRecent:Z

    .line 39
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "HtcAnimationManager"

    const-string v1, "HtcAnimManagerImpl2 is created!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 42
    iput-object p2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 138
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 139
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 140
    int-to-float v1, p0

    .line 142
    :goto_0
    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method private createExitAnimationLocked(I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "duration"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 119
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 120
    .local v0, "a":Landroid/view/animation/Animation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 122
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 123
    return-object v0
.end method

.method private createScaleDownAnimationLocked(ZIILandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 11
    .param p1, "enter"    # Z
    .param p2, "Dw"    # I
    .param p3, "Dh"    # I
    .param p4, "scaleDowntoRect"    # Landroid/graphics/Rect;

    .prologue
    .line 83
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAnimationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create scale down animation: enter="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Dw="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Dh="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", scaleDowntoRect="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const/16 v8, 0xc8

    .line 92
    .local v8, "duration":I
    if-nez p1, :cond_1

    .line 94
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, p2

    div-float v2, v1, v3

    .line 95
    .local v2, "scaleW":F
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, p3

    div-float v4, v1, v3

    .line 96
    .local v4, "scaleH":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget v5, p4, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v2}, Lcom/android/server/wm/HtcAnimationManagerImpl2;->computePivot(IF)F

    move-result v5

    iget v6, p4, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v4}, Lcom/android/server/wm/HtcAnimationManagerImpl2;->computePivot(IF)F

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 99
    .local v0, "scale":Landroid/view/animation/Animation;
    int-to-long v5, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 100
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 101
    .local v10, "set":Landroid/view/animation/AnimationSet;
    int-to-long v5, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 102
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 104
    move-object v7, v10

    .line 109
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v2    # "scaleW":F
    .end local v4    # "scaleH":F
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    const v3, 0x10c000b

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 112
    .local v9, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v7, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 113
    invoke-virtual {v7, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 114
    return-object v7

    .line 107
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/wm/HtcAnimationManagerImpl2;->createExitAnimationLocked(I)Landroid/view/animation/Animation;

    move-result-object v7

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method private doRecentAppTransition()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 178
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "HtcAnimationManager"

    const-string v1, "Force do recent trans anim."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsRecentAppInvolve:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsOverrideAppTranAnim:Z

    .line 184
    return-void
.end method


# virtual methods
.method public applyOverrideAppTranAnimLocked(Z)Landroid/view/animation/Animation;
    .locals 11
    .param p1, "isEnter"    # Z

    .prologue
    .line 46
    iget-boolean v8, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsRecentAppInvolve:Z

    if-eqz v8, :cond_4

    .line 47
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/android/server/wm/HtcAnimationManagerImpl2;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v8, :cond_0

    .line 48
    const-string v8, "HtcAnimationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "override app trans anim by RecentApp involving,mExcludeFromRecent= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mExcludeFromRecent:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    iget-boolean v8, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mExcludeFromRecent:Z

    if-nez v8, :cond_3

    .line 53
    iget-object v8, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 54
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v3, Landroid/view/DisplayInfo;->appWidth:I

    .line 55
    .local v1, "Dw":I
    iget v0, v3, Landroid/view/DisplayInfo;->appHeight:I

    .line 58
    .local v0, "Dh":I
    iget-object v9, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    if-le v0, v1, :cond_2

    const/16 v8, 0x3e9

    :goto_0
    invoke-static {v9, v8}, Lcom/htc/view/ScaleAnimationUtil;->getScaleRegion(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 61
    .local v5, "region":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, "bottom":I
    move v6, v2

    .local v6, "right":I
    move v7, v2

    .local v7, "top":I
    move v4, v2

    .line 63
    .local v4, "left":I
    if-eqz v5, :cond_1

    .line 65
    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 66
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 67
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 68
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 71
    :cond_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v7, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v1, v0, v8}, Lcom/android/server/wm/HtcAnimationManagerImpl2;->createScaleDownAnimationLocked(ZIILandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    .line 77
    .end local v0    # "Dh":I
    .end local v1    # "Dw":I
    .end local v2    # "bottom":I
    .end local v3    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v4    # "left":I
    .end local v5    # "region":Landroid/graphics/Rect;
    .end local v6    # "right":I
    .end local v7    # "top":I
    :goto_1
    return-object v8

    .line 58
    .restart local v0    # "Dh":I
    .restart local v1    # "Dw":I
    .restart local v3    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_2
    const/16 v8, 0x3ea

    goto :goto_0

    .line 74
    .end local v0    # "Dh":I
    .end local v1    # "Dw":I
    .end local v3    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3
    new-instance v8, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;

    invoke-direct {v8, p1}, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;-><init>(Z)V

    goto :goto_1

    .line 77
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public cleanAnimParamsLocked()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsOverrideAppTranAnim:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsRecentAppInvolve:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mExcludeFromRecent:Z

    .line 153
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAnimationManager"

    const-string v1, "Anim Params and flags has been cleared!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    return-void
.end method

.method public doHack(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "openingApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "closingApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v2, 0x0

    .line 164
    .local v2, "tokenName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 165
    .local v0, "NN":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 166
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 167
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    :cond_0
    if-eqz v2, :cond_2

    const-string v4, "com.android.systemui/.recent.RecentAppFxActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/android/server/wm/HtcAnimationManagerImpl2;->doRecentAppTransition()V

    .line 175
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-void

    .line 165
    .restart local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isOverrideAppTransAnim()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsOverrideAppTranAnim:Z

    return v0
.end method

.method public prepareRecentAppTransitionAnimation(Z)V
    .locals 0
    .param p1, "isExcludeFromRecent"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mExcludeFromRecent:Z

    .line 189
    return-void
.end method
