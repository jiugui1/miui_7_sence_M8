.class public Lcom/htc/profileflag/ProfileConfig;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# static fields
.field public static final HtcDebug:Z

.field static final LOGTAG:Ljava/lang/String; = "ProfileConfig"

.field public static final LOGTAG_LAUNCH:Ljava/lang/String; = "ProfileLaunch"

.field public static final LOGTAG_RESUME:Ljava/lang/String; = "ProfileResume"

.field private static final PROF_UI_MESSAGE_LIMITATION_FLASH:Ljava/lang/String; = "profiler.performance.flash"

.field private static final PROP_ANRHISTORY:Ljava/lang/String; = "debugtool.anrhistory"

.field private static final PROP_ANR_DUMP_BINDER:Ljava/lang/String; = "profiler.anr_dump_binder"

.field private static final PROP_ANR_DUMP_NATIVE_UID:Ljava/lang/String; = "profiler.anr_dump_native_uid"

.field private static final PROP_CHECK_HEAP:Ljava/lang/String; = "profiler.checkheap"

.field private static final PROP_CHECK_LOW_MEMORY:Ljava/lang/String; = "profiler.checklowmemory"

.field private static final PROP_CHECK_LOW_STORAGE:Ljava/lang/String; = "profiler.checklowstorage"

.field private static final PROP_DEBUGBROADCAST:Ljava/lang/String; = "profiler.debugbroadcast"

.field private static final PROP_DEBUGB_TIMETICK:Ljava/lang/String; = "profiler.debug.timetick"

.field private static final PROP_DEBUG_BATTERY_HISTORY:Ljava/lang/String; = "profiler.dbg.batthistory"

.field private static final PROP_DEBUG_DISABLE_HW_ACCEL:Ljava/lang/String; = "profiler.debug.disable_hw_accel"

.field private static final PROP_DEBUG_HIDE_BG_ANR:Ljava/lang/String; = "profiler.debug.hide_bg_anr"

.field private static final PROP_DEBUG_MONITOR:Ljava/lang/String; = "profiler.debugmonitor"

.field private static final PROP_DEBUG_PROVIDER_CLIENT:Ljava/lang/String; = "profiler.debug.provider_client"

.field private static final PROP_DEBUG_SCHEDULE:Ljava/lang/String; = "profiler.debug_schedule"

.field private static final PROP_DEBUG_WAKELOCK:Ljava/lang/String; = "profiler.wakelock"

.field private static final PROP_DUMP_ALL_BMP_STACK_TRACE:Ljava/lang/String; = "profiler.dumpallbmpstacktrace"

.field private static final PROP_DUMP_PROVIDER_STACK_ONDYING:Ljava/lang/String; = "profiler.provdump.ondying"

.field private static final PROP_FAST_LAUNCH:Ljava/lang/String; = "fast_launch"

.field private static final PROP_FEATURE_HARDWARE_RESET:Ljava/lang/String; = "ro.product.hwreset"

.field private static final PROP_FEATURE_HARDWARE_RESET_TIMER1:Ljava/lang/String; = "ro.product.hwreset.timer1"

.field private static final PROP_FEATURE_HARDWARE_RESET_TIMER2:Ljava/lang/String; = "ro.product.hwreset.timer2"

.field private static final PROP_FEATURE_MULTI_CORE_FUNCTION_SWITCH:Ljava/lang/String; = "persist.htc.multicore.switch"

.field private static final PROP_FEATURE_MULTI_CORE_TIMEOUT_MILLISECOND:Ljava/lang/String; = "persist.htc.multicore.timeout"

.field private static final PROP_FEATURE_MULTI_CORE_TIMEOUT_MILLISECOND_HOME:Ljava/lang/String; = "persist.htc.multicore.home"

.field private static final PROP_FEATURE_MULTI_CORE_TIMEOUT_MILLISECOND_INNER_PROCESS:Ljava/lang/String; = "persist.htc.multicore.innerT"

.field private static final PROP_FEATURE_SCREEN_CAPTURE:Ljava/lang/String; = "ro.htc.framework.screencapture"

.field private static final PROP_FEATURE_SHAREKEY_LONG_PRESS_ACT:Ljava/lang/String; = "ro.htc.sharekey.lact"

.field private static final PROP_FEATURE_SHAREKEY_LONG_PRESS_INTENT_ACTION:Ljava/lang/String; = "ro.htc.sharekey.lint"

.field private static final PROP_FEATURE_SHAREKEY_LONG_PRESS_PKG:Ljava/lang/String; = "ro.htc.sharekey.lpkg"

.field private static final PROP_FEATURE_SHAREKEY_SHORT_PRESS_ACT:Ljava/lang/String; = "ro.htc.sharekey.sact"

.field private static final PROP_FEATURE_SHAREKEY_SHORT_PRESS_INTENT_ACTION:Ljava/lang/String; = "ro.htc.sharekey.sint"

.field private static final PROP_FEATURE_SHAREKEY_SHORT_PRESS_PKG:Ljava/lang/String; = "ro.htc.sharekey.spkg"

.field private static final PROP_FEATURE_STATUS_BAR_COLLAPSE_DELAY_MILLISECOND_FOR_WIFIDISPLAY:Ljava/lang/String; = "persist.htc.sbcd.wifidisplay"

.field private static final PROP_FEATURE_STATUS_BAR_COLLAPSE_TIMEOUT_MILLISECOND:Ljava/lang/String; = "persist.htc.sbcollapsetimeout"

.field public static final PROP_FORCE_DISABLE_ERROR_REPORT:Ljava/lang/String; = "profiler.force_disable_err_rpt"

.field public static final PROP_FORCE_DISABLE_ULOG:Ljava/lang/String; = "profiler.force_disable_ulog"

.field private static final PROP_FREE_FILEMAP:Ljava/lang/String; = "profiler.freeFileMap"

.field private static final PROP_FREE_NATIVE_BITMAP:Ljava/lang/String; = "profiler.freeNativeBmp"

.field private static final PROP_FREE_NATIVE_BITMAP_DEBUG:Ljava/lang/String; = "profiler.freeNativeBmpDebug"

.field private static final PROP_HUNG_DOBUGREPORT:Ljava/lang/String; = "profiler.hung.dumpdobugreport"

.field private static final PROP_HUNG_DUMPALLPROCESSES:Ljava/lang/String; = "profiler.hung.dumpallprocesses"

.field private static final PROP_HUNG_DUMPMEDIANATIVE:Ljava/lang/String; = "profiler.hung.dumpmedianative"

.field private static final PROP_HUNG_DUMPSYSNATIVE:Ljava/lang/String; = "profiler.hung.dumpsysnative"

.field private static final PROP_HUNG_KEEPALIVE:Ljava/lang/String; = "profiler.hung.keepalive"

.field private static final PROP_KERNELSTACK:Ljava/lang/String; = "profiler.debugtool.kernelstack"

.field private static final PROP_KEYINPUTQUEUE_DEBUGUPDOWN:Ljava/lang/String; = "profiler.KIQdebugupdown"

.field private static final PROP_KEY_LAUNCH:Ljava/lang/String; = "profiler.launch"

.field private static final PROP_KEY_PERFORMANCE:Ljava/lang/String; = "profiler.performance"

.field private static final PROP_KEY_PERFORMANCE_TEST:Ljava/lang/String; = "profiler.perftest"

.field private static final PROP_KEY_PREFIX:Ljava/lang/String; = "profiler."

.field private static final PROP_KEY_RESUME:Ljava/lang/String; = "profiler.resume"

.field private static final PROP_LAUNCHPID_FILEPATH:Ljava/lang/String; = "/sdcard/profilePID"

.field private static final PROP_LOG_FPS:Ljava/lang/String; = "profiler.logfps"

.field private static final PROP_LOW_STORAGE_THRESHOLD:Ljava/lang/String; = "profiler.lowstoragethreshold"

.field private static final PROP_MONITOR_THREAD_CPU_USAGE:Ljava/lang/String; = "profiler.monitorthreadcpuusage"

.field private static final PROP_NO_ROTATIONANIMATION:Ljava/lang/String; = "profiler.no_RotationAnimation"

.field private static final PROP_OPEN_CURSOR:Ljava/lang/String; = "profiler.opencursor"

.field private static final PROP_POWER:Ljava/lang/String; = "profiler.power"

.field private static final PROP_RECYCLE_BITMAP:Ljava/lang/String; = "profiler.recyclebmp"

.field private static final PROP_RECYCLE_BITMAP_SIZE:Ljava/lang/String; = "profiler.recyclebmpsize"

.field private static final PROP_STRICT_POLICY_SET:Ljava/lang/String; = "strictmode.policyset"

.field private static final PROP_SYNCDETECTOR:Ljava/lang/String; = "profiler.syncdetector"

.field private static final PROP_VALUE_ENABLE_HAPTIC:Ljava/lang/String; = "htc.fw.db.enable_haptic"

.field private static final PROP_VALUE_FORCE_WRITE_AHEAD_LOGGING:Ljava/lang/String; = "htc.fw.db.enable_wal"

.field private static final PROP_VALUE_SHAREKEY_LONG_PRESS_DEFAULT_ACT:Ljava/lang/String; = "com.sina.mfweibo.LookAroundListActivity"

.field private static final PROP_VALUE_SHAREKEY_LONG_PRESS_DEFAULT_INTENT_ACTION:Ljava/lang/String; = ""

.field private static final PROP_VALUE_SHAREKEY_LONG_PRESS_DEFAULT_PKG:Ljava/lang/String; = "com.sina.mfweibo"

.field private static final PROP_VALUE_SHAREKEY_SHORT_PRESS_DEFAULT_ACT:Ljava/lang/String; = "com.sina.mfweibo.EditActivity"

.field private static final PROP_VALUE_SHAREKEY_SHORT_PRESS_DEFAULT_INTENT_ACTION:Ljava/lang/String; = ""

.field private static final PROP_VALUE_SHAREKEY_SHORT_PRESS_DEFAULT_PKG:Ljava/lang/String; = "com.sina.mfweibo"

.field private static final PROP_WINDOWMANAGERSERVICE_DEBUGUPDOWN:Ljava/lang/String; = "profiler.WMSdebugupdown"

.field static dumped:Z

.field private static mEnableReleaseBitmapDevices:[B

.field private static profile_anr_dump_binder:Z

.field private static profile_anr_dump_native_uid:I

.field private static profile_anrhistory:Z

.field private static profile_checkheap:Z

.field private static profile_checklowmemory:Z

.field private static profile_checklowstorage:Z

.field private static profile_debug_batteryhistory:Z

.field private static profile_debug_disable_hw_accel:Z

.field private static profile_debug_hideBgAnr:I

.field private static profile_debug_provider_client:I

.field private static profile_debug_schedule:Z

.field private static profile_debug_timetick:Z

.field private static profile_debug_wakelock:Z

.field private static profile_debugbroadcast:Z

.field private static profile_debugmonitor:Z

.field private static profile_dumpAllBitmapStackTrace:Z

.field private static profile_fast_launch:Z

.field private static profile_feature_multicore_function_switch:Z

.field private static profile_feature_multicore_timeout_millisecond:I

.field private static profile_feature_multicore_timeout_millisecond_home:I

.field private static profile_feature_multicore_timeout_millisecond_inner_process:I

.field private static profile_feature_statusbar_collapse_delay_for_wifidisplay_only:I

.field private static profile_feature_statusbar_collapse_timeout_millisecond:I

.field private static profile_force_disable_error_report:Z

.field private static profile_force_disable_ulog:Z

.field private static profile_framework_enable_haptic:Z

.field private static profile_framework_force_write_ahead_logging:Z

.field private static profile_framework_screencapture:Z

.field private static profile_framework_sharekey_long_press_act:Ljava/lang/String;

.field private static profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

.field private static profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

.field private static profile_framework_sharekey_short_press_act:Ljava/lang/String;

.field private static profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

.field private static profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

.field private static profile_freeFileMap:Z

.field private static profile_freeNativeBmp:I

.field private static profile_freeNativeBmpDebug:Z

.field private static profile_hardware_reset_feature:I

.field private static profile_hardware_reset_feature_timer1:I

.field private static profile_hardware_reset_feature_timer2:I

.field private static profile_hung_dobugreport:Z

.field private static profile_hung_dumpallprocesses:Z

.field private static profile_hung_dumpmedianative:Z

.field private static profile_hung_dumpsysnative:Z

.field private static profile_hung_keepalive:Z

.field private static profile_kernelstack:Z

.field private static profile_keyInputQueue_debugUpDown:Z

.field private static profile_launch:Z

.field private static profile_launch_pid:I

.field private static profile_log_fps:I

.field private static profile_lowstoragethreshold:I

.field private static profile_monitor_thread_cpu_usage:Z

.field private static profile_no_RotationAnimation:Z

.field private static profile_opencursor:Z

.field private static profile_performance:I

.field private static profile_performanceTest:I

.field private static profile_power:Z

.field private static profile_provider_dumpstack_ondying:Z

.field private static profile_recyclebmp:Z

.field private static profile_recyclebmpsize:I

.field private static profile_resume:Z

.field private static profile_syncdetector:Z

.field private static profile_ui_message_limitation:I

.field private static profile_windowManagerService_debugUpDown:Z

.field private static sIsRealShutdown:Z

.field private static strictmode_policy_set:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v7, 0x1f4

    const/4 v10, 0x5

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    sput-boolean v6, Lcom/htc/profileflag/ProfileConfig;->sIsRealShutdown:Z

    const-string v4, "ro.factorytest"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "factoryTestStr":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v6

    .local v1, "factoryTest":I
    :goto_1
    if-eqz v1, :cond_8

    sput-boolean v5, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_error_report:Z

    :goto_2
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v4

    if-eqz v4, :cond_9

    sput-boolean v5, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_ulog:Z

    :goto_3
    const-string v4, "profiler.resume"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_resume:Z

    const-string v4, "profiler.launch"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_launch:Z

    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-ne v4, v5, :cond_b

    const-string v4, "profiler.performance"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_a

    move v4, v6

    :goto_4
    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    const-string v4, "profiler.perftest"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_performanceTest:I

    const-string v4, "profiler.opencursor"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    const-string v4, "profiler.checkheap"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_checkheap:Z

    const-string v4, "profiler.recyclebmp"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmp:Z

    const/4 v0, 0x0

    .local v0, "disablefreeNativeBmpDevice":Z
    if-eqz v0, :cond_c

    move v4, v6

    :goto_5
    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    const-string v4, "profiler.freeNativeBmpDebug"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmpDebug:Z

    const-string v4, "profiler.recyclebmpsize"

    const/16 v8, 0x32

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmpsize:I

    const-string v4, "profiler.checklowmemory"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    const-string v4, "profiler.debugmonitor"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debugmonitor:Z

    const-string v4, "profiler.KIQdebugupdown"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_keyInputQueue_debugUpDown:Z

    const-string v4, "profiler.WMSdebugupdown"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_windowManagerService_debugUpDown:Z

    sput v9, Lcom/htc/profileflag/ProfileConfig;->profile_launch_pid:I

    const-string v4, "debugtool.anrhistory"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_anrhistory:Z

    const-string v4, "profiler.hung.keepalive"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_hung_keepalive:Z

    const-string v4, "profiler.hung.dumpallprocesses"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpallprocesses:Z

    const-string v4, "profiler.hung.dumpsysnative"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpsysnative:Z

    const-string v4, "profiler.hung.dumpmedianative"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpmedianative:Z

    const-string v4, "profiler.hung.dumpdobugreport"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dobugreport:Z

    const-string v4, "profiler.monitorthreadcpuusage"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_monitor_thread_cpu_usage:Z

    const-string v4, "profiler.wakelock"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_wakelock:Z

    const-string v4, "profiler.debugtool.kernelstack"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_kernelstack:Z

    const-string v4, "profiler.anr_dump_binder"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v4, :cond_d

    :cond_0
    move v4, v5

    :goto_6
    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_binder:Z

    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v4, :cond_e

    const-string v4, "profiler.anr_dump_native_uid"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    :goto_7
    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_native_uid:I

    const-string v4, "strictmode.policyset"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->strictmode_policy_set:I

    const-string v4, "profiler.no_RotationAnimation"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v4, :cond_f

    move v4, v5

    :goto_8
    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_no_RotationAnimation:Z

    const-string v4, "profiler.logfps"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_log_fps:I

    const-string v4, "profiler.checklowstorage"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_checklowstorage:Z

    const-string v4, "profiler.lowstoragethreshold"

    const/high16 v8, 0x900000

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/high16 v8, 0x900000

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_lowstoragethreshold:I

    const-string v4, "ro.htc.framework.screencapture"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_screencapture:Z

    const-string v4, "ro.product.hwreset"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature:I

    const-string v4, "ro.product.hwreset.timer1"

    invoke-static {v4, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    const-string v4, "ro.product.hwreset.timer2"

    const/16 v8, 0x8

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    sget v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    const/4 v8, 0x2

    if-le v4, v8, :cond_1

    sget v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    const/16 v8, 0xa

    if-le v4, v8, :cond_2

    :cond_1
    sput v10, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    :cond_2
    sget v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    sget v8, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    if-gt v4, v8, :cond_3

    sget v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    add-int/lit8 v4, v4, 0x3

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    :cond_3
    const-string v4, "ro.htc.sharekey.spkg"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    const-string v4, "ro.htc.sharekey.sact"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    const-string v4, "ro.htc.sharekey.sint"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    const-string v4, ""

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ""

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ""

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "com.sina.mfweibo"

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    const-string v4, "com.sina.mfweibo.EditActivity"

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    const-string v4, ""

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    const-string v4, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "share key short press:get default intent - package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", activity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v4, "ro.htc.sharekey.lpkg"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    const-string v4, "ro.htc.sharekey.lact"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    const-string v4, "ro.htc.sharekey.lint"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    const-string v4, ""

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ""

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ""

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "com.sina.mfweibo"

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    const-string v4, "com.sina.mfweibo.LookAroundListActivity"

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    const-string v4, ""

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    const-string v4, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "share key long press:get default intent - package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v4, "htc.fw.db.enable_wal"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_force_write_ahead_logging:Z

    const-string v4, "htc.fw.db.enable_haptic"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_enable_haptic:Z

    const-string v4, "profiler.syncdetector"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_syncdetector:Z

    const-string v4, "profiler.debugbroadcast"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debugbroadcast:Z

    const-string v8, "profiler.debug.timetick"

    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-ne v4, v5, :cond_10

    move v4, v5

    :goto_9
    invoke-static {v8, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_timetick:Z

    new-array v4, v6, [B

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->mEnableReleaseBitmapDevices:[B

    const-string v4, "fast_launch"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_fast_launch:Z

    const-string v4, "profiler.debug_schedule"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_schedule:Z

    const-string v4, "profiler.power"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_power:Z

    const-string v4, "profiler.dbg.batthistory"

    sget-boolean v8, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_batteryhistory:Z

    const-string v4, "profiler.debug.hide_bg_anr"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_hideBgAnr:I

    const-string v4, "profiler.debug.provider_client"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_provider_client:I

    const-string v4, "profiler.freeFileMap"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_freeFileMap:Z

    const-string v4, "profiler.debug.disable_hw_accel"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_disable_hw_accel:Z

    const-string v4, "persist.htc.multicore.switch"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_function_switch:Z

    const-string v4, "persist.htc.multicore.timeout"

    const/16 v5, 0x7d0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_timeout_millisecond:I

    const-string v4, "persist.htc.multicore.innerT"

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_timeout_millisecond_inner_process:I

    const-string v4, "persist.htc.multicore.home"

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_timeout_millisecond_home:I

    const-string v4, "persist.htc.sbcollapsetimeout"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_feature_statusbar_collapse_timeout_millisecond:I

    const-string v4, "persist.htc.sbcd.wifidisplay"

    const/16 v5, 0x2bc

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_feature_statusbar_collapse_delay_for_wifidisplay_only:I

    const/4 v3, 0x0

    .local v3, "isSense40a":Z
    const-string v5, "profiler.performance.flash"

    if-eqz v3, :cond_11

    move v4, v7

    :goto_a
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_ui_message_limitation:I

    const-string v4, "profiler.provdump.ondying"

    sget-boolean v5, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_provider_dumpstack_ondying:Z

    const-string v4, "profiler.dumpallbmpstacktrace"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_dumpAllBitmapStackTrace:Z

    sput-boolean v6, Lcom/htc/profileflag/ProfileConfig;->dumped:Z

    return-void

    .end local v0    # "disablefreeNativeBmpDevice":Z
    .end local v1    # "factoryTest":I
    .end local v2    # "factoryTestStr":Ljava/lang/String;
    .end local v3    # "isSense40a":Z
    :cond_6
    move v4, v6

    goto/16 :goto_0

    .restart local v2    # "factoryTestStr":Ljava/lang/String;
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1

    .restart local v1    # "factoryTest":I
    :cond_8
    const-string v4, "profiler.force_disable_err_rpt"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_error_report:Z

    goto/16 :goto_2

    :cond_9
    sput-boolean v6, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_ulog:Z

    goto/16 :goto_3

    :cond_a
    const-string v4, "profiler.performance"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto/16 :goto_4

    :cond_b
    const-string v4, "profiler.performance"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_4

    .restart local v0    # "disablefreeNativeBmpDevice":Z
    :cond_c
    const-string v4, "profiler.freeNativeBmp"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_5

    :cond_d
    move v4, v6

    goto/16 :goto_6

    :cond_e
    move v4, v6

    goto/16 :goto_7

    :cond_f
    move v4, v6

    goto/16 :goto_8

    :cond_10
    move v4, v6

    goto/16 :goto_9

    .restart local v3    # "isSense40a":Z
    :cond_11
    const/16 v4, 0x12c

    goto :goto_a
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canDoHPROF(I)Z
    .locals 2
    .param p0, "length"    # I

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-nez v0, :cond_0

    const-string v0, "ProfileConfig"

    const-string v1, "Not allow HPROF debug info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/htc/profileflag/ProfileConfig;->canDoHPROFnative(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static native canDoHPROFnative(I)Z
.end method

.method private static dumpFD()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ls -l /proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/profileflag/ProfileConfig;->runRootCommand(Ljava/lang/String;)Z

    move-result v0

    if-eq v2, v0, :cond_0

    const-string v0, "ProfileConfig"

    const-string v1, "dump FD failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ps -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/profileflag/ProfileConfig;->runRootCommand(Ljava/lang/String;)Z

    move-result v0

    if-eq v2, v0, :cond_1

    const-string v0, "ProfileConfig"

    const-string v1, "dump thread list failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static getCheckHeap()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_checkheap:Z

    return v0
.end method

.method public static getCheckLowMemory()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    return v0
.end method

.method public static getCheckLowStorage()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowstorage:Z

    return v0
.end method

.method public static getDumpAllBitmapStackTrace()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_dumpAllBitmapStackTrace:Z

    return v0
.end method

.method public static getFreeFileMap()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeFileMap:Z

    goto :goto_0
.end method

.method public static getFreeNativeBitmap()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    sget v2, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static getFreeNativeBitmapDebug()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmpDebug:Z

    return v0
.end method

.method public static getInputDispatchingTimeout()I
    .locals 2

    .prologue
    sget v0, Landroid/os/Build;->STAGE:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build;->STAGE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x3a98

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x1388

    goto :goto_0
.end method

.method public static getLowStorageThreshold()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_lowstoragethreshold:I

    return v0
.end method

.method public static getProfileANRDumpBinder()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_binder:Z

    return v0
.end method

.method public static getProfileANRDumpNativeUID()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_native_uid:I

    return v0
.end method

.method public static getProfileDebugANRHistory()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_anrhistory:Z

    return v0
.end method

.method public static getProfileDebugBatteryHistory()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_batteryhistory:Z

    return v0
.end method

.method public static getProfileDebugBroadcast()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static getProfileDebugDisableHwAccel()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_disable_hw_accel:Z

    return v0
.end method

.method public static getProfileDebugHungDoBugreport()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dobugreport:Z

    return v0
.end method

.method public static getProfileDebugHungDumpAllProcesses()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpallprocesses:Z

    return v0
.end method

.method public static getProfileDebugHungDumpMediaNative()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpmedianative:Z

    return v0
.end method

.method public static getProfileDebugHungDumpSysNative()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpsysnative:Z

    return v0
.end method

.method public static getProfileDebugHungKeepAlive()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_keepalive:Z

    return v0
.end method

.method public static getProfileDebugKernelStack()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_kernelstack:Z

    return v0
.end method

.method public static getProfileDebugMonitor()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debugmonitor:Z

    return v0
.end method

.method public static getProfileDebugSchedule()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_schedule:Z

    return v0
.end method

.method public static getProfileDebugTimeTick()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_timetick:Z

    return v0
.end method

.method public static getProfileDebugWakelock()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_wakelock:Z

    return v0
.end method

.method public static getProfileDumpProviderStackOnDying()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_provider_dumpstack_ondying:Z

    return v0
.end method

.method public static getProfileFastLaunch()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_fast_launch:Z

    return v0
.end method

.method public static getProfileForceDisableErrorRport()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_error_report:Z

    return v0
.end method

.method public static getProfileForceDisableUlog()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_ulog:Z

    return v0
.end method

.method public static getProfileForceWriteAheadLogging()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_force_write_ahead_logging:Z

    return v0
.end method

.method public static getProfileHapticFeature()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_enable_haptic:Z

    return v0
.end method

.method public static getProfileHardwareResetEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    sget v1, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature:I

    if-ne v1, v0, :cond_0

    .local v0, "enabled":Z
    :goto_0
    return v0

    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileHardwareResetTimer1()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static getProfileHardwareResetTimer2()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static getProfileHideBgAnr()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_hideBgAnr:I

    return v0
.end method

.method public static getProfileKeyInputQueueDebugUpDown()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_keyInputQueue_debugUpDown:Z

    return v0
.end method

.method public static getProfileLaunch()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_launch:Z

    return v0
.end method

.method public static getProfileLaunchPid()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public static getProfileLogFps()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_log_fps:I

    return v0
.end method

.method public static getProfileMonitorThreadCpuUsage()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_monitor_thread_cpu_usage:Z

    return v0
.end method

.method public static getProfileMulticoreSwitch()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_function_switch:Z

    return v0
.end method

.method public static getProfileMulticoreTimeout()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_timeout_millisecond:I

    return v0
.end method

.method public static getProfileMulticoreTimeoutHome()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_timeout_millisecond_home:I

    return v0
.end method

.method public static getProfileMulticoreTimeoutInnerProcess()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_timeout_millisecond_inner_process:I

    return v0
.end method

.method public static getProfileNoRotationAnimation()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_no_RotationAnimation:Z

    return v0
.end method

.method public static getProfileOpenCursor()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    return v0
.end method

.method public static getProfilePerformance()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    return v0
.end method

.method public static getProfilePerformanceTest()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_performanceTest:I

    return v0
.end method

.method public static getProfilePower()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_power:Z

    return v0
.end method

.method public static getProfileProviderClient()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_provider_client:I

    return v0
.end method

.method public static getProfileResume()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_resume:Z

    return v0
.end method

.method public static getProfileScreenCaptureEnabled()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_screencapture:Z

    return v0
.end method

.method public static getProfileShareKeyLongPressActivity()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyLongPressIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyLongPressPackage()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyShortPressActivity()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyShortPressIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyShortPressPackage()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileStatusbarCollapseDelayForWifidisplayOnly()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_feature_statusbar_collapse_delay_for_wifidisplay_only:I

    return v0
.end method

.method public static getProfileStatusbarCollapseTimeout()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_feature_statusbar_collapse_timeout_millisecond:I

    return v0
.end method

.method public static getProfileSyncDetector()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static getProfileUIMessageLimitation()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_ui_message_limitation:I

    return v0
.end method

.method public static getProfileWindowManagerServiceDebugUpDown()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_windowManagerService_debugUpDown:Z

    return v0
.end method

.method public static getRecycleBitmap()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmp:Z

    return v0
.end method

.method public static getRecycleBitmapSize()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmpsize:I

    return v0
.end method

.method public static getShutdownState()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->sIsRealShutdown:Z

    return v0
.end method

.method public static getStrictModePolicySet()I
    .locals 1

    .prologue
    sget v0, Lcom/htc/profileflag/ProfileConfig;->strictmode_policy_set:I

    return v0
.end method

.method private static init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "featureString"    # Ljava/lang/String;

    .prologue
    const-string v0, ""

    .local v0, "retString":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfileConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sharekey reading orig property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static runCommand(Ljava/lang/String;)Z
    .locals 10
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-string v7, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runCommand: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .local v2, "output":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "/system/bin/sh"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v2    # "output":Ljava/io/DataOutputStream;
    .local v3, "output":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v7, "exit\n"

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v7, "ProfileConfig"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_1
    move-object v2, v3

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    :goto_2
    return v6

    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    :goto_3
    :try_start_6
    const-string v7, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    :goto_4
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_5
    throw v6

    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :goto_6
    const/4 v6, 0x1

    move-object v2, v3

    .end local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    goto :goto_2

    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v6

    goto :goto_6

    .end local v1    # "line":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v7

    goto :goto_5

    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method private static runRootCommand(Ljava/lang/String;)Z
    .locals 10
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-nez v7, :cond_0

    :goto_0
    return v6

    :cond_0
    const-string v7, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runRootCommand: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .local v2, "output":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "/system/xbin/su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v2    # "output":Ljava/io/DataOutputStream;
    .local v3, "output":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v7, "exit\n"

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v7, "ProfileConfig"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .end local v3    # "output":Ljava/io/DataOutputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    :goto_2
    :try_start_6
    const-string v7, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_0

    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v6

    :goto_4
    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :goto_5
    throw v6

    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v6

    goto :goto_3

    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v7

    goto :goto_5

    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method public static setCheckHeap(Z)V
    .locals 0
    .param p0, "checkheap"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_checkheap:Z

    return-void
.end method

.method public static setCheckLowMemory(Z)V
    .locals 0
    .param p0, "checklowmemory"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    return-void
.end method

.method public static setCheckLowStorage(Z)V
    .locals 0
    .param p0, "checklowstorage"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowstorage:Z

    return-void
.end method

.method public static setFreeNativeBitmap(Z)V
    .locals 1
    .param p0, "freeNativeBmp"    # Z

    .prologue
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    goto :goto_0
.end method

.method public static setFreeNativeBitmapDebug(Z)V
    .locals 0
    .param p0, "freeNativeBmpDebug"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmpDebug:Z

    return-void
.end method

.method public static setLowStorageThreshold(I)V
    .locals 0
    .param p0, "lowstoragethreshold"    # I

    .prologue
    sput p0, Lcom/htc/profileflag/ProfileConfig;->profile_lowstoragethreshold:I

    return-void
.end method

.method public static setProfileANRDumpBinder(Z)V
    .locals 0
    .param p0, "anr_dump_binder"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_binder:Z

    return-void
.end method

.method public static setProfileDebugMonitor(Z)V
    .locals 0
    .param p0, "debugmonitor"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_debugmonitor:Z

    return-void
.end method

.method public static setProfileKeyInputQueueDebugUpDown(Z)V
    .locals 0
    .param p0, "keyInputQueue_debugUpDown"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_keyInputQueue_debugUpDown:Z

    return-void
.end method

.method public static setProfileLaunch(Z)V
    .locals 0
    .param p0, "launch"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_launch:Z

    return-void
.end method

.method public static setProfileLaunchPid(I)V
    .locals 0
    .param p0, "pid"    # I

    .prologue
    return-void
.end method

.method public static setProfileOpenCursor(Z)V
    .locals 0
    .param p0, "opencursor"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    return-void
.end method

.method public static setProfilePerformance(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    sput p0, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    return-void
.end method

.method public static setProfileResume(Z)V
    .locals 0
    .param p0, "resume"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_resume:Z

    return-void
.end method

.method public static setProfileWindowManagerServiceDebugUpDown(Z)V
    .locals 0
    .param p0, "windowManagerService_debugUpDown"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_windowManagerService_debugUpDown:Z

    return-void
.end method

.method public static setRecycleBitmap(Z)V
    .locals 0
    .param p0, "recyclebmp"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmp:Z

    return-void
.end method

.method public static setRecycleBitmapSize(I)V
    .locals 0
    .param p0, "recyclebmpsize"    # I

    .prologue
    sput p0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmpsize:I

    return-void
.end method

.method public static setShutdownState(Z)V
    .locals 0
    .param p0, "state"    # Z

    .prologue
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->sIsRealShutdown:Z

    return-void
.end method
