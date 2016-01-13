.class Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;
.super Landroid/database/ContentObserver;
.source "WebViewSpellCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewSpellCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellCheckSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewSpellCheckHelper;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewSpellCheckHelper;)V
    .locals 1

    .prologue
    .line 300
    iput-object p1, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    .line 301
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 302
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 311
    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # getter for: Landroid/webkit/WebViewSpellCheckHelper;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;
    invoke-static {v1}, Landroid/webkit/WebViewSpellCheckHelper;->access$900(Landroid/webkit/WebViewSpellCheckHelper;)Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    .line 312
    .local v0, "spellCheckerActivated":Z
    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # invokes: Landroid/webkit/WebViewSpellCheckHelper;->isSessionActive()Z
    invoke-static {v1}, Landroid/webkit/WebViewSpellCheckHelper;->access$1000(Landroid/webkit/WebViewSpellCheckHelper;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 313
    iget-object v1, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckSettingObserver;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    # invokes: Landroid/webkit/WebViewSpellCheckHelper;->resetSession()V
    invoke-static {v1}, Landroid/webkit/WebViewSpellCheckHelper;->access$1100(Landroid/webkit/WebViewSpellCheckHelper;)V

    .line 315
    :cond_0
    const-string v1, "KENLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpellCheckSettingObserver# enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method
