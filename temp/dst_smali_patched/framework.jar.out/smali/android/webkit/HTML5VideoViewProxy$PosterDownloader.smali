.class final Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PosterDownloader"
.end annotation


# static fields
.field private static mQueueRefCount:I

.field private static mRequestQueue:Landroid/net/http/RequestQueue;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeaders:Landroid/net/http/Headers;

.field private mPosterBytes:Ljava/io/ByteArrayOutputStream;

.field private final mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "proxy"    # Landroid/webkit/HTML5VideoViewProxy;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHandler:Landroid/os/Handler;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    goto :goto_0
.end method

.method static synthetic access$600(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Landroid/net/http/RequestHandle;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .prologue
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    return v0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private releaseQueue()V
    .locals 1

    .prologue
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    goto :goto_0
.end method

.method private retainQueue()V
    .locals 2

    .prologue
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    :cond_0
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    return-void
.end method


# virtual methods
.method public cancelAndReleaseQueue()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->releaseQueue()V

    return-void
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    return-void
.end method

.method public data([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public endData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "poster":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mediadownloads.mlb.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v2, v5, 0x4

    .local v2, "newWidth":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x4

    .local v1, "newHeight":I
    invoke-static {v3, v2, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "resizedBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    # invokes: Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V
    invoke-static {v5, v4}, Landroid/webkit/HTML5VideoViewProxy;->access$500(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    .end local v1    # "newHeight":I
    .end local v2    # "newWidth":I
    .end local v3    # "poster":Landroid/graphics/Bitmap;
    .end local v4    # "resizedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .restart local v3    # "poster":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    # invokes: Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V
    invoke-static {v5, v3}, Landroid/webkit/HTML5VideoViewProxy;->access$500(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V

    .end local v3    # "poster":Landroid/graphics/Bitmap;
    :cond_2
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    goto :goto_0

    :cond_3
    iget v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v6, 0x12c

    if-lt v5, v6, :cond_0

    iget v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v6, 0x190

    if-ge v5, v6, :cond_0

    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v6}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHandler:Landroid/os/Handler;

    new-instance v6, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;

    invoke-direct {v6, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;-><init>(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    goto :goto_1
.end method

.method public error(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    return-void
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .locals 1
    .param p1, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public headers(Landroid/net/http/Headers;)V
    .locals 0
    .param p1, "headers"    # Landroid/net/http/Headers;

    .prologue
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHeaders:Landroid/net/http/Headers;

    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->retainQueue()V

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .local v7, "protocol":Ljava/lang/String;
    const-string v0, "http"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    goto :goto_0
.end method

.method public status(IIILjava/lang/String;)V
    .locals 0
    .param p1, "major_version"    # I
    .param p2, "minor_version"    # I
    .param p3, "code"    # I
    .param p4, "reason_phrase"    # Ljava/lang/String;

    .prologue
    iput p3, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    return-void
.end method
