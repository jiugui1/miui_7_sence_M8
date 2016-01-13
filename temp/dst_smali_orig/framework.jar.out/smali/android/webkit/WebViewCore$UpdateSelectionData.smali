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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebViewCore$UpdateSelectionData;->mOldQuery:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/WebViewCore$UpdateSelectionData;->mNewQuery:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/webkit/WebViewCore$UpdateSelectionData;->mShouldRedrawSelection:Z

    return-void
.end method
