.class Landroid/webkit/WebViewClassic$InvokeColorPicker;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeColorPicker"
.end annotation


# instance fields
.field mColor:I

.field mMethod_Show:Ljava/lang/reflect/Method;

.field mMethod_setPositiveButton:Ljava/lang/reflect/Method;

.field mPicker:Ljava/lang/Object;

.field preserved:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;II)V
    .locals 0
    .param p2, "color"    # I
    .param p3, "preserved"    # I

    .prologue
    .line 13449
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InvokeColorPicker;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13451
    iput p2, p0, Landroid/webkit/WebViewClassic$InvokeColorPicker;->mColor:I

    .line 13452
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebViewClassic;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/webkit/WebViewClassic$1;

    .prologue
    .line 13442
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic$InvokeColorPicker;-><init>(Landroid/webkit/WebViewClassic;II)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 13463
    :try_start_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic$InvokeColorPicker;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 13464
    .local v3, "loader":Ljava/lang/ClassLoader;
    const-string v4, "com.htc.browsermodule.WebViewColorPickerDialog"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 13468
    .local v2, "exteriorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/webkit/WebViewCore;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 13471
    .local v0, "con_from_browser":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/webkit/WebViewClassic$InvokeColorPicker;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/webkit/WebViewClassic$InvokeColorPicker;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$2200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/high16 v6, -0x1000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13483
    .end local v0    # "con_from_browser":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "exteriorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    :goto_0
    return-void

    .line 13478
    :catch_0
    move-exception v1

    .line 13479
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "mc"

    const-string v5, "Browser %s %s could not be loaded."

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "com.android.browser"

    aput-object v7, v6, v8

    const-string v7, "com.android.browser.HtcSeekBarForFramework"

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
