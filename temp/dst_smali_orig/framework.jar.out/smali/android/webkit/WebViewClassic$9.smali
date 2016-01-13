.class Landroid/webkit/WebViewClassic$9;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->performKikinSearch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    # invokes: Landroid/webkit/WebViewClassic;->performKikinSearch(Z)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$2800(Landroid/webkit/WebViewClassic;Z)V

    return-void
.end method
