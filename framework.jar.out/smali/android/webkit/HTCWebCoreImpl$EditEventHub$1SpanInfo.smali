.class Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;
.super Ljava/lang/Object;
.source "HTCWebCoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTCWebCoreImpl$EditEventHub;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpanInfo"
.end annotation


# static fields
.field static final SPAN_BACKGROUND:I = 0x3

.field static final SPAN_SELECTION:I = 0x1

.field static final SPAN_UNDERLINE:I = 0x2


# instance fields
.field color:I

.field end:I

.field start:I

.field final synthetic this$1:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

.field type:I


# direct methods
.method constructor <init>(Landroid/webkit/HTCWebCoreImpl$EditEventHub;Ljava/lang/Object;)V
    .locals 2
    .param p2, "span"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 691
    iput-object p1, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->this$1:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->color:I

    .line 688
    iput v1, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->start:I

    .line 689
    iput v1, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->end:I

    .line 692
    invoke-virtual {p0, p2}, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->getSpanType(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->type:I

    .line 693
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 694
    check-cast p2, Landroid/text/style/BackgroundColorSpan;

    .end local p2    # "span":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->color:I

    .line 696
    :cond_0
    return-void
.end method


# virtual methods
.method getSpanType(Ljava/lang/Object;)I
    .locals 2
    .param p1, "span"    # Ljava/lang/Object;

    .prologue
    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, "ret":I
    instance-of v1, p1, Landroid/text/style/BackgroundColorSpan;

    if-eqz v1, :cond_1

    .line 701
    const/4 v0, 0x3

    .line 705
    :cond_0
    :goto_0
    return v0

    .line 702
    :cond_1
    instance-of v1, p1, Landroid/text/style/UnderlineSpan;

    if-eqz v1, :cond_0

    .line 703
    const/4 v0, 0x2

    goto :goto_0
.end method
