.class public Lcom/htc/view/NavigationBarConfiguration;
.super Ljava/lang/Object;
.source "NavigationBarConfiguration.java"


# static fields
.field public static final ACTION_DATA_TIP_NEVERSHOW:Ljava/lang/String; = "neverShow"

.field public static final ACTION_TIP_NEVERSHOW:Ljava/lang/String; = "android.intent.action.NEVER_SHOW_MENU"

.field public static final DEBUG_NAV_BAR:Z

.field private static final OVERRIDE_HIDE_NAVIGATION_BAR:I = 0x1

.field private static final OVERRIDE_NONE:I = -0x1

.field private static final OVERRIDE_SHOW_CUSTOMIZED_NAVIGATION_BAR:I = 0x2

.field private static final OVERRIDE_SHOW_DEFAULT_NAVIGATION_BAR:I = 0x0

.field private static final PROP_DEBUG_NAVI_BAR:Ljava/lang/String; = "debug_nav_bar"

.field public static final PROP_NAVBAR_HIDE:Ljava/lang/String; = "persist.sys.navbar.hide"

.field public static final PROP_TIP_NEVERSHOW:Ljava/lang/String; = "persist.sys.navtips.nevershow"

.field private static final TAG:Ljava/lang/String; = "NavigationBarConfiguration"

.field private static final WVGA_LONG:I = 0x320

.field private static final WVGA_SHORT:I = 0x1e0

.field private static mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoAffectComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsCustomizedNavigationBar:Ljava/lang/Boolean;

.field private static sIsLessEqualWVGA:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    const-string v0, "debug_nav_bar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    .line 49
    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    .line 52
    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    .line 78
    invoke-static {}, Lcom/htc/view/NavigationBarConfiguration;->loadBlackList()V

    .line 146
    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->sIsLessEqualWVGA:Ljava/lang/Boolean;

    .line 149
    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->sIsCustomizedNavigationBar:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isLessEqualWVGA="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sIsLessEqualWVGA:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isCustomizedNavigationBar="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->sIsCustomizedNavigationBar:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasMenuKey="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x52

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 226
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasAppSwitchKey="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xbb

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 227
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "qemu.hw.mainkeys="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "qemu.hw.mainkeys"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static getHideNavBarInProperties()Z
    .locals 2

    .prologue
    .line 129
    const-string v0, "persist.sys.navbar.hide"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasRecentAppKey()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    const/16 v0, 0xbb

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    return v0
.end method

.method private static final isComponentInNoAffectList(Landroid/content/ComponentName;)Z
    .locals 4
    .param p0, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 95
    const/4 v1, 0x0

    .line 103
    :goto_0
    return v1

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "strComponent":Ljava/lang/String;
    sget-boolean v1, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "NavigationBarConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    sget-object v1, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isCustomizedNavigationBar(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    const-string v4, "NavigationBarConfiguration"

    monitor-enter v4

    .line 192
    :try_start_0
    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->sIsCustomizedNavigationBar:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 193
    const-string v3, "qemu.hw.mainkeys"

    const/4 v5, -0x1

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 194
    .local v2, "navigationBarOverride":I
    packed-switch v2, :pswitch_data_0

    .line 206
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/htc/view/NavigationBarConfiguration;->sIsCustomizedNavigationBar:Ljava/lang/Boolean;

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1110044

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 208
    .local v1, "hasNavigationBar":Z
    if-nez v1, :cond_0

    .line 209
    const/16 v3, 0x52

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 210
    .local v0, "hasMenuKey":Z
    if-nez v0, :cond_0

    .line 212
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/htc/view/NavigationBarConfiguration;->sIsCustomizedNavigationBar:Ljava/lang/Boolean;

    .line 218
    .end local v0    # "hasMenuKey":Z
    .end local v1    # "hasNavigationBar":Z
    .end local v2    # "navigationBarOverride":I
    :cond_0
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->sIsCustomizedNavigationBar:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 197
    .restart local v2    # "navigationBarOverride":I
    :pswitch_0
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/htc/view/NavigationBarConfiguration;->sIsCustomizedNavigationBar:Ljava/lang/Boolean;

    goto :goto_0

    .line 218
    .end local v2    # "navigationBarOverride":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 201
    .restart local v2    # "navigationBarOverride":I
    :pswitch_1
    const/4 v3, 0x1

    :try_start_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/htc/view/NavigationBarConfiguration;->sIsCustomizedNavigationBar:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isLessEqualWVGA(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 159
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/view/NavigationBarConfiguration;->isLessEqualWVGA(Landroid/view/Display;)Z

    move-result v1

    return v1
.end method

.method public static isLessEqualWVGA(Landroid/view/Display;)Z
    .locals 6
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 169
    const-string v4, "NavigationBarConfiguration"

    monitor-enter v4

    .line 170
    :try_start_0
    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->sIsLessEqualWVGA:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 171
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/htc/view/NavigationBarConfiguration;->sIsLessEqualWVGA:Ljava/lang/Boolean;

    .line 172
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 173
    .local v1, "outSize":Landroid/graphics/Point;
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 174
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 175
    .local v2, "width":I
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 176
    .local v0, "height":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v5, 0x1e0

    if-gt v3, v5, :cond_0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v5, 0x320

    if-gt v3, v5, :cond_0

    .line 177
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/htc/view/NavigationBarConfiguration;->sIsLessEqualWVGA:Ljava/lang/Boolean;

    .line 180
    .end local v0    # "height":I
    .end local v1    # "outSize":Landroid/graphics/Point;
    .end local v2    # "width":I
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->sIsLessEqualWVGA:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 180
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static final isPackageInBlackList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "strPackageName"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isUpdateNavigationBarVisibility(Landroid/view/Display;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 110
    invoke-static {}, Lcom/htc/view/NavigationBarConfiguration;->getHideNavBarInProperties()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/htc/view/NavigationBarConfiguration;->isComponentInNoAffectList(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadBlackList()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    .line 57
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.books"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.translate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.melimots.WordSearch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.mobilityware.solitaire"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "net.cdeguet.smartkeyboardpro"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.rubicon.dev.glwg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.sinovatech.unicom.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.neusoft.td.android.wo116114"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    .line 70
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    const-string v1, "com.htc/.HtcLinkifyDispatcher"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    const-string v1, "com.zdworks.android.toolbox/.ui.widget.BrightnessActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    const-string v1, "android/com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    const-string v1, "com.domobile.applock/.GuideActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    const-string v1, "android/com.android.internal.app.ChooserActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public static setHideNavBarInProperties(Z)V
    .locals 3
    .param p0, "hide"    # Z

    .prologue
    .line 122
    const-string v0, "persist.sys.navbar.hide"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "NavigationBarConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setprop: persist.sys.navbar.hide, hide? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    return-void
.end method

.method public static showHtcNavigationBar(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    invoke-static {p0}, Lcom/htc/view/NavigationBarConfiguration;->isCustomizedNavigationBar(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static updateNeverShowTip(Z)V
    .locals 3
    .param p0, "neverShow"    # Z

    .prologue
    .line 114
    const-string v0, "persist.sys.navtips.nevershow"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-boolean v0, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "NavigationBarConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update persist.sys.navtips.nevershow to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method
