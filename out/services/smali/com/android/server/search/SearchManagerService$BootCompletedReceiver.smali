.class final Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/search/SearchManagerService;Lcom/android/server/search/SearchManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/search/SearchManagerService;
    .param p2, "x1"    # Lcom/android/server/search/SearchManagerService$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/search/SearchManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    new-instance v0, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;-><init>(Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;->start()V

    .line 136
    return-void
.end method
