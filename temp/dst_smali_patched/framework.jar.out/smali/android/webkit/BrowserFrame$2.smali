.class Landroid/webkit/BrowserFrame$2;
.super Landroid/webkit/HttpAuthHandler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/BrowserFrame;->didReceiveAuthenticationChallenge(ILjava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/BrowserFrame;

.field final synthetic val$handle:I

.field final synthetic val$suppressDialog:Z

.field final synthetic val$useCachedCredentials:Z


# direct methods
.method constructor <init>(Landroid/webkit/BrowserFrame;ZIZ)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/BrowserFrame$2;->this$0:Landroid/webkit/BrowserFrame;

    iput-boolean p2, p0, Landroid/webkit/BrowserFrame$2;->val$useCachedCredentials:Z

    iput p3, p0, Landroid/webkit/BrowserFrame$2;->val$handle:I

    iput-boolean p4, p0, Landroid/webkit/BrowserFrame$2;->val$suppressDialog:Z

    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame$2;->this$0:Landroid/webkit/BrowserFrame;

    iget v1, p0, Landroid/webkit/BrowserFrame$2;->val$handle:I

    # invokes: Landroid/webkit/BrowserFrame;->nativeAuthenticationCancel(I)V
    invoke-static {v0, v1}, Landroid/webkit/BrowserFrame;->access$300(Landroid/webkit/BrowserFrame;I)V

    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame$2;->this$0:Landroid/webkit/BrowserFrame;

    iget v1, p0, Landroid/webkit/BrowserFrame$2;->val$handle:I

    # invokes: Landroid/webkit/BrowserFrame;->nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, p2}, Landroid/webkit/BrowserFrame;->access$200(Landroid/webkit/BrowserFrame;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public suppressDialog()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame$2;->val$suppressDialog:Z

    return v0
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame$2;->val$useCachedCredentials:Z

    return v0
.end method
