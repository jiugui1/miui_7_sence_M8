.class public final Lcom/htc/utils/perf/FramerateMonitor;
.super Ljava/lang/Object;
.source "FramerateMonitor.java"


# static fields
.field public static final Enabled:Z

.field public static final ID_ANIMATION:I = 0x5dd

.field public static final ID_LISTVIEW_FLING:I = 0x3eb

.field public static final ID_LISTVIEW_INTRO:I = 0x3ef

.field public static final ID_LISTVIEW_SCROLL:I = 0x3e9

.field private static final ID_LOG_START_TWICE:I = 0x7cf

.field public static final ID_WINDOW_TRANSITION:I = 0x3ed

.field private static final INVALID_HANDLE:I = -0x1

.field public static final MONITOR_TYPE_GLSURFACEVIEW:I = 0x3

.field public static final MONITOR_TYPE_SURFACEFLINGER:I = 0x2

.field public static final MONITOR_TYPE_VIEWROOT:I = 0x1

.field private static final PREFIX:Ljava/lang/String; = "[AutoProf]"

.field private static final STR_LOG_STARTED_TWICE:Ljava/lang/String; = "[AutoProf](1999) Stop because start called twice, handle="

.field private static final TAG:Ljava/lang/String; = "Performance"


# instance fields
.field private final mAnimationType:I

.field private final mContextName:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mMonitorType:I

.field private mNativeHandle:I

.field private mView:Landroid/view/View;

.field private mViewRootImpl:Landroid/view/ViewRootImpl;

.field m_b:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "monitorType"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animationType"    # I
    .param p5, "description"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    .line 31
    iput-object v1, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    .line 32
    iput-object v1, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 132
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->m_b:Landroid/os/Binder;

    .line 119
    iput-object p3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    .line 127
    :goto_0
    iput p2, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    .line 128
    iput-object p5, p0, Lcom/htc/utils/perf/FramerateMonitor;->mDescription:Ljava/lang/String;

    .line 129
    iput p4, p0, Lcom/htc/utils/perf/FramerateMonitor;->mAnimationType:I

    .line 130
    return-void

    .line 125
    :cond_0
    const-string v0, "null"

    iput-object v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    goto :goto_0
.end method

.method private native nativeStartLogFps(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeStopLogFps(I)V
.end method

.method private native nativeUpdateFrame(I)V
.end method

.method private static native nativeUpdateFrameByType(I)V
.end method

.method public static newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 6
    .param p0, "monitorType"    # I
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animationType"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 83
    sget-boolean v2, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    if-nez v2, :cond_0

    .line 115
    :goto_0
    return-object v0

    .line 87
    :cond_0
    const/4 v2, 0x1

    if-eq v2, p0, :cond_1

    if-eq v3, p0, :cond_1

    if-eq v4, p0, :cond_1

    .line 90
    const-string v2, "Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong logging type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_1
    if-eq p0, v3, :cond_2

    if-nez p1, :cond_2

    .line 95
    const-string v2, "Performance"

    const-string v3, "View cannot be null when monitorType is not MONITOR_TYPE_SURFACEFLINGER"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_2
    const/4 v1, 0x0

    .line 100
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_3

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 102
    if-nez v1, :cond_3

    .line 103
    const-string v2, "Performance"

    const-string v3, "View do not have a context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_3
    if-ne v4, p0, :cond_4

    instance-of v2, p1, Landroid/opengl/GLSurfaceView;

    if-nez v2, :cond_4

    .line 109
    const-string v2, "Performance"

    const-string v3, "view is not instance of GLSurfaceView"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :cond_4
    new-instance v0, Lcom/htc/utils/perf/FramerateMonitor;

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/utils/perf/FramerateMonitor;-><init>(Landroid/content/Context;ILandroid/view/View;ILjava/lang/String;)V

    .line 115
    .local v0, "fm":Lcom/htc/utils/perf/FramerateMonitor;
    goto :goto_0
.end method

.method public static updateFrameByType(I)V
    .locals 1
    .param p0, "monitorType"    # I

    .prologue
    .line 288
    sget-boolean v0, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 296
    invoke-static {p0}, Lcom/htc/utils/perf/FramerateMonitor;->nativeUpdateFrameByType(I)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 311
    iget v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 312
    const-string v0, "Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](*) Stop logging by finalizer, handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 317
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 318
    return-void
.end method

.method public startLogFps()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    const/4 v5, 0x0

    .line 139
    sget-boolean v7, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    if-nez v7, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v5

    .line 143
    :cond_1
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-eq v7, v11, :cond_2

    .line 144
    const-string v7, "Performance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AutoProf](1999) Stop because start called twice, handle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 148
    :cond_2
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 149
    const-string v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 151
    .local v4, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v4, :cond_4

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 153
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 154
    .local v2, "reply":Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mAnimationType:I

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->m_b:Landroid/os/Binder;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 162
    const/16 v7, 0x7d0

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v7, v0, v2, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 163
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 176
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :goto_2
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-eq v7, v11, :cond_0

    .end local v4    # "surfaceFlinger":Landroid/os/IBinder;
    :cond_3
    :goto_3
    move v5, v6

    .line 216
    goto :goto_0

    .line 164
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    .restart local v4    # "surfaceFlinger":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v7, "Performance"

    const-string v8, "Fail to transact with SurfaceFlinger"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 166
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string v7, "Performance"

    const-string v8, "SurfaceFlinger transaction security check fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw v5

    .line 173
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_4
    const-string v7, "Performance"

    const-string v8, "Fail to get service SurfaceFlinger"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 182
    .end local v4    # "surfaceFlinger":Landroid/os/IBinder;
    :cond_5
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 187
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    if-ne v6, v7, :cond_7

    .line 189
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 191
    .local v3, "root":Landroid/view/ViewRootImpl;
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eq v7, v3, :cond_6

    .line 196
    :cond_6
    iput-object v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 198
    if-eqz v3, :cond_0

    .line 203
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_7
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    iget v8, p0, Lcom/htc/utils/perf/FramerateMonitor;->mAnimationType:I

    iget-object v9, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/utils/perf/FramerateMonitor;->mDescription:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/htc/utils/perf/FramerateMonitor;->nativeStartLogFps(IILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    .line 205
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-eq v7, v11, :cond_0

    .line 209
    const/4 v5, 0x3

    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    if-ne v5, v7, :cond_3

    goto :goto_3
.end method

.method public stopLogFps()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 223
    sget-boolean v3, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    if-nez v3, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-eq v3, v6, :cond_0

    .line 230
    iget v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 231
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 232
    .local v2, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v2, :cond_2

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 234
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    iget v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/16 v3, 0x7d1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "surfaceFlinger":Landroid/os/IBinder;
    :goto_2
    iput v6, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    goto :goto_0

    .line 241
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "surfaceFlinger":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Performance"

    const-string v4, "Fail to transact with SurfaceFlinger"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 244
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 247
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_2
    const-string v3, "Performance"

    const-string v4, "Fail to get service SurfaceFlinger"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 255
    .end local v2    # "surfaceFlinger":Landroid/os/IBinder;
    :cond_3
    const/4 v3, 0x3

    iget v4, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    if-ne v3, v4, :cond_4

    .line 261
    :cond_4
    iget v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-direct {p0, v3}, Lcom/htc/utils/perf/FramerateMonitor;->nativeStopLogFps(I)V

    goto :goto_2
.end method

.method public updateFrame()V
    .locals 1

    .prologue
    .line 274
    sget-boolean v0, Lcom/htc/utils/perf/FramerateMonitor;->Enabled:Z

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    iget v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/htc/utils/perf/FramerateMonitor;->nativeUpdateFrame(I)V

    goto :goto_0
.end method
