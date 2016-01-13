.class Landroid/webkit/BrowserFrame$3;
.super Landroid/webkit/SslErrorHandler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/BrowserFrame;->reportSslCertError(II[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/BrowserFrame;

.field final synthetic val$certError:I

.field final synthetic val$sslError:Landroid/net/http/SslError;


# direct methods
.method constructor <init>(Landroid/webkit/BrowserFrame;Landroid/net/http/SslError;I)V
    .locals 0

    .prologue
    .line 1212
    iput-object p1, p0, Landroid/webkit/BrowserFrame$3;->this$0:Landroid/webkit/BrowserFrame;

    iput-object p2, p0, Landroid/webkit/BrowserFrame$3;->val$sslError:Landroid/net/http/SslError;

    iput p3, p0, Landroid/webkit/BrowserFrame$3;->val$certError:I

    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1231
    new-instance v0, Landroid/webkit/BrowserFrame$3$2;

    invoke-direct {v0, p0}, Landroid/webkit/BrowserFrame$3$2;-><init>(Landroid/webkit/BrowserFrame$3;)V

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame$3;->post(Ljava/lang/Runnable;)Z

    .line 1243
    return-void
.end method

.method public proceed()V
    .locals 1

    .prologue
    .line 1215
    new-instance v0, Landroid/webkit/BrowserFrame$3$1;

    invoke-direct {v0, p0}, Landroid/webkit/BrowserFrame$3$1;-><init>(Landroid/webkit/BrowserFrame$3;)V

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame$3;->post(Ljava/lang/Runnable;)Z

    .line 1228
    return-void
.end method
