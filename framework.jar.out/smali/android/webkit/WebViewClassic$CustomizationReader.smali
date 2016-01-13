.class Landroid/webkit/WebViewClassic$CustomizationReader;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomizationReader"
.end annotation


# instance fields
.field mPicker:Ljava/lang/Object;

.field m_mnr_getCustomizationReader:Ljava/lang/reflect/Method;

.field m_rder_readInteger:Ljava/lang/reflect/Method;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    .line 13491
    iput-object p1, p0, Landroid/webkit/WebViewClassic$CustomizationReader;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebViewClassic;
    .param p2, "x1"    # Landroid/webkit/WebViewClassic$1;

    .prologue
    .line 13491
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$CustomizationReader;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public getAcc([Ljava/lang/String;)V
    .locals 7
    .param p1, "arr"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13497
    # getter for: Landroid/webkit/WebViewClassic;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$11200()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Landroid/webkit/WebViewClassic;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$11200()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    const-string v2, "Internet"

    invoke-virtual {v1, v2, v5, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 13499
    .local v0, "mCustReader2":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    if-eqz v0, :cond_0

    .line 13501
    const-string v1, "tileNum"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    .line 13502
    const-string v1, "tileWidth"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    .line 13503
    const-string v1, "tileHeight"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v6

    .line 13505
    :cond_0
    const-string v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load from ACC tileNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tileWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tileHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13506
    return-void

    .line 13497
    .end local v0    # "mCustReader2":Lcom/htc/customization/HtcCustomizationReader;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
