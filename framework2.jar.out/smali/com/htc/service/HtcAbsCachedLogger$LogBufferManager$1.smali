.class Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$1;
.super Ljava/lang/Object;
.source "HtcAbsCachedLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;


# direct methods
.method constructor <init>(Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$1;->this$1:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager$1;->this$1:Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;

    invoke-virtual {v0}, Lcom/htc/service/HtcAbsCachedLogger$LogBufferManager;->trimCacheToLWM()V

    .line 376
    return-void
.end method
