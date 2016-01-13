.class public final enum Landroid/webkit/WebView$WebViewType;
.super Ljava/lang/Enum;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebView$WebViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebView$WebViewType;

.field public static final enum CHROME:Landroid/webkit/WebView$WebViewType;

.field public static final enum CLASSIC:Landroid/webkit/WebView$WebViewType;

.field public static final enum DEFAULT:Landroid/webkit/WebView$WebViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/webkit/WebView$WebViewType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView$WebViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebView$WebViewType;->DEFAULT:Landroid/webkit/WebView$WebViewType;

    new-instance v0, Landroid/webkit/WebView$WebViewType;

    const-string v1, "CLASSIC"

    invoke-direct {v0, v1, v3}, Landroid/webkit/WebView$WebViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebView$WebViewType;->CLASSIC:Landroid/webkit/WebView$WebViewType;

    new-instance v0, Landroid/webkit/WebView$WebViewType;

    const-string v1, "CHROME"

    invoke-direct {v0, v1, v4}, Landroid/webkit/WebView$WebViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebView$WebViewType;->CHROME:Landroid/webkit/WebView$WebViewType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/webkit/WebView$WebViewType;

    sget-object v1, Landroid/webkit/WebView$WebViewType;->DEFAULT:Landroid/webkit/WebView$WebViewType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkit/WebView$WebViewType;->CLASSIC:Landroid/webkit/WebView$WebViewType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkit/WebView$WebViewType;->CHROME:Landroid/webkit/WebView$WebViewType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/webkit/WebView$WebViewType;->$VALUES:[Landroid/webkit/WebView$WebViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebView$WebViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Landroid/webkit/WebView$WebViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView$WebViewType;

    return-object v0
.end method

.method public static values()[Landroid/webkit/WebView$WebViewType;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/WebView$WebViewType;->$VALUES:[Landroid/webkit/WebView$WebViewType;

    invoke-virtual {v0}, [Landroid/webkit/WebView$WebViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebView$WebViewType;

    return-object v0
.end method
