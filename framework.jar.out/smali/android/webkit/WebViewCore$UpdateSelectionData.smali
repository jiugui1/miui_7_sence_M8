.class Landroid/webkit/WebViewCore$UpdateSelectionData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateSelectionData"
.end annotation


# instance fields
.field mNewQuery:Ljava/lang/String;

.field mOldQuery:Ljava/lang/String;

.field mShouldRedrawSelection:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "oldQuery"    # Ljava/lang/String;
    .param p2, "newQuery"    # Ljava/lang/String;
    .param p3, "shouldRedrawSelection"    # Z

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput-object p1, p0, Landroid/webkit/WebViewCore$UpdateSelectionData;->mOldQuery:Ljava/lang/String;

    .line 1088
    iput-object p2, p0, Landroid/webkit/WebViewCore$UpdateSelectionData;->mNewQuery:Ljava/lang/String;

    .line 1089
    iput-boolean p3, p0, Landroid/webkit/WebViewCore$UpdateSelectionData;->mShouldRedrawSelection:Z

    .line 1090
    return-void
.end method
