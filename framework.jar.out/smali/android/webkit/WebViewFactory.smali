.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$1;,
        Landroid/webkit/WebViewFactory$Preloader;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProvider"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_WEBVIEW_FACTORY:Ljava/lang/String; = "android.webkit.WebViewClassic$Factory"

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Landroid/webkit/WebViewFactory;->getFactoryClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getFactoryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Landroid/webkit/WebViewFactory;->isChromiumWebViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "com.android.webview.chromium.WebViewChromiumFactoryProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.webkit.WebViewClassic$Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 6

    .prologue
    .line 80
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v4

    .line 83
    :try_start_0
    sget-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v3, :cond_0

    sget-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :goto_0
    return-object v3

    .line 87
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getFactoryClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 94
    .restart local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :try_start_2
    sget-object v3, Landroid/webkit/WebViewFactory$Preloader;->sPreloadedProvider:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/webkit/WebViewFactory$Preloader;->sPreloadedProvider:Landroid/webkit/WebViewFactoryProvider;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 96
    sget-object v3, Landroid/webkit/WebViewFactory$Preloader;->sPreloadedProvider:Landroid/webkit/WebViewFactoryProvider;

    sput-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 98
    sget-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v4

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 88
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    const-string v3, "WebViewFactory"

    const-string v5, "error loading provider"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    new-instance v3, Landroid/util/AndroidRuntimeException;

    invoke-direct {v3, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 102
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 104
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebViewFactoryProvider;

    sput-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 106
    sget-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :try_start_5
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 106
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "WebViewFactory"

    const-string v5, "error instantiating provider"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    new-instance v3, Landroid/util/AndroidRuntimeException;

    invoke-direct {v3, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :try_start_7
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private static isChromiumWebViewEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    sget-object v4, Landroid/webkit/WebViewFactory$1;->$SwitchMap$android$webkit$WebView$WebViewType:[I

    invoke-static {}, Landroid/webkit/WebView;->getWebViewType()Landroid/webkit/WebView$WebViewType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView$WebViewType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 133
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 134
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 135
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "appPackage":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, "com.htc."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.browser"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .end local v0    # "app":Landroid/app/Application;
    .end local v1    # "appPackage":Ljava/lang/String;
    :pswitch_1
    move v2, v3

    .line 130
    goto :goto_0

    .restart local v0    # "app":Landroid/app/Application;
    .restart local v1    # "appPackage":Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 145
    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isExperimentalWebViewAvailable()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public static isUseExperimentalWebViewSet()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public static setUseExperimentalWebView(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 65
    return-void
.end method

.method public static useExperimentalWebView()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method
