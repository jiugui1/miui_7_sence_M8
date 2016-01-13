.class interface abstract Lcom/android/server/wm/HtcAnimationManager;
.super Ljava/lang/Object;
.source "HtcAnimationManager.java"


# static fields
.field public static final DEBUG_ANIM_CHOOSEN:Z

.field public static final TAG:Ljava/lang/String; = "HtcAnimationManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "debug_anim_choosen"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/HtcAnimationManager;->DEBUG_ANIM_CHOOSEN:Z

    return-void
.end method


# virtual methods
.method public abstract applyOverrideAppTranAnimLocked(Z)Landroid/view/animation/Animation;
.end method

.method public abstract cleanAnimParamsLocked()V
.end method

.method public abstract doHack(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
.end method

.method public abstract isOverrideAppTransAnim()Z
.end method

.method public abstract prepareRecentAppTransitionAnimation(Z)V
.end method
