.class public final Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/HtcIfWindowManager;
.implements Landroid/view/WindowManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mGlobal:Landroid/view/WindowManagerGlobal;

.field private final mParentWindow:Landroid/view/Window;

.field private mWindowService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/view/Display;Landroid/view/Window;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 80
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    .line 81
    iput-object p2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    .line 82
    return-void
.end method

.method private getIWM()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 122
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 94
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V

    .line 95
    return-void
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I

    .prologue
    .line 134
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 135
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 138
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWindowToken, token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "addWindowToken [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 85
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1, p1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    return-object v0
.end method

.method public createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 89
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    invoke-direct {v0, p1, v1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    return-object v0
.end method

.method public getAnimationScales()[F
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 147
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 150
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    const-string v2, "getAnimationScales"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "getAnimationScales [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getRotation()I
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 185
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 188
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    const-string v2, "getRotation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getRotation()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 194
    :goto_0
    return v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "getRotation [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSwitchState(I)I
    .locals 2
    .param p1, "sw"    # I

    .prologue
    .line 211
    const-string v0, "WindowManager"

    const-string v1, "getSwichState has been removed..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 243
    const-string v0, "WindowManager"

    const-string v1, "injectKeyEvent has been removed..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public keyguardIsShowing()Z
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 251
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 254
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    const-string v2, "keyguardIsShowing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->keyguardIsShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    :goto_0
    return v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "keyguardIsShowing [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 105
    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 110
    return-void
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 160
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 161
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 164
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWindowToken, token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "removeWindowToken [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAnimationScales([F)V
    .locals 3
    .param p1, "scales"    # [F

    .prologue
    .line 172
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 173
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 176
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    const-string v2, "setAnimationScales"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "setAnimationScales [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPenSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    return-void
.end method

.method public setPointerSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 228
    const-string v0, "WindowManager"

    const-string v1, "setPointerSpeed has been removed..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method public setShowKeyguard(Z)V
    .locals 4
    .param p1, "showLockScreen"    # Z

    .prologue
    .line 264
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 265
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 268
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShowKeyguard, showLockScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setShowKeyguard(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "setShowKeyguard [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showKeyguardWithAnimation(Z)V
    .locals 4
    .param p1, "showLockScreen"    # Z

    .prologue
    .line 276
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 277
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 280
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showKeyguardWithAnimation, showLockScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->showKeyguardWithAnimation(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "showKeyguardWithAnimation [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method
