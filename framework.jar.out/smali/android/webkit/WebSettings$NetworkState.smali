.class public final enum Landroid/webkit/WebSettings$NetworkState;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebSettings$NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebSettings$NetworkState;

.field public static final enum THREE_G:Landroid/webkit/WebSettings$NetworkState;

.field public static final enum TWO_G:Landroid/webkit/WebSettings$NetworkState;

.field public static final enum WIFI:Landroid/webkit/WebSettings$NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    new-instance v0, Landroid/webkit/WebSettings$NetworkState;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$NetworkState;->WIFI:Landroid/webkit/WebSettings$NetworkState;

    .line 175
    new-instance v0, Landroid/webkit/WebSettings$NetworkState;

    const-string v1, "TWO_G"

    invoke-direct {v0, v1, v3}, Landroid/webkit/WebSettings$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$NetworkState;->TWO_G:Landroid/webkit/WebSettings$NetworkState;

    .line 176
    new-instance v0, Landroid/webkit/WebSettings$NetworkState;

    const-string v1, "THREE_G"

    invoke-direct {v0, v1, v4}, Landroid/webkit/WebSettings$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$NetworkState;->THREE_G:Landroid/webkit/WebSettings$NetworkState;

    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/webkit/WebSettings$NetworkState;

    sget-object v1, Landroid/webkit/WebSettings$NetworkState;->WIFI:Landroid/webkit/WebSettings$NetworkState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkit/WebSettings$NetworkState;->TWO_G:Landroid/webkit/WebSettings$NetworkState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkit/WebSettings$NetworkState;->THREE_G:Landroid/webkit/WebSettings$NetworkState;

    aput-object v1, v0, v4

    sput-object v0, Landroid/webkit/WebSettings$NetworkState;->$VALUES:[Landroid/webkit/WebSettings$NetworkState;

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
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$NetworkState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    const-class v0, Landroid/webkit/WebSettings$NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$NetworkState;

    return-object v0
.end method

.method public static values()[Landroid/webkit/WebSettings$NetworkState;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Landroid/webkit/WebSettings$NetworkState;->$VALUES:[Landroid/webkit/WebSettings$NetworkState;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$NetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$NetworkState;

    return-object v0
.end method
