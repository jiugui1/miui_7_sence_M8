.class synthetic Landroid/webkit/WebViewFactory$1;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$webkit$WebView$WebViewType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Landroid/webkit/WebView$WebViewType;->values()[Landroid/webkit/WebView$WebViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/webkit/WebViewFactory$1;->$SwitchMap$android$webkit$WebView$WebViewType:[I

    :try_start_0
    sget-object v0, Landroid/webkit/WebViewFactory$1;->$SwitchMap$android$webkit$WebView$WebViewType:[I

    sget-object v1, Landroid/webkit/WebView$WebViewType;->CLASSIC:Landroid/webkit/WebView$WebViewType;

    invoke-virtual {v1}, Landroid/webkit/WebView$WebViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Landroid/webkit/WebViewFactory$1;->$SwitchMap$android$webkit$WebView$WebViewType:[I

    sget-object v1, Landroid/webkit/WebView$WebViewType;->CHROME:Landroid/webkit/WebView$WebViewType;

    invoke-virtual {v1}, Landroid/webkit/WebView$WebViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
