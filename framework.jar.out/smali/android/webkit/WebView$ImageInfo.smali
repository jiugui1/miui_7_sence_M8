.class public Landroid/webkit/WebView$ImageInfo;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageInfo"
.end annotation


# instance fields
.field public m_height:I

.field public m_src:Ljava/lang/String;

.field public m_width:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;II)V
    .locals 0
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2627
    iput-object p1, p0, Landroid/webkit/WebView$ImageInfo;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2628
    iput-object p2, p0, Landroid/webkit/WebView$ImageInfo;->m_src:Ljava/lang/String;

    .line 2629
    iput p3, p0, Landroid/webkit/WebView$ImageInfo;->m_width:I

    .line 2630
    iput p4, p0, Landroid/webkit/WebView$ImageInfo;->m_height:I

    .line 2631
    return-void
.end method
