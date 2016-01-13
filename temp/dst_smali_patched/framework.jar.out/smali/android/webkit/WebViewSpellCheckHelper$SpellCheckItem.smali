.class Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;
.super Ljava/lang/Object;
.source "WebViewSpellCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewSpellCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellCheckItem"
.end annotation


# instance fields
.field mByTouch:Z

.field mEnd:I

.field mNode:I

.field mStart:I

.field mWord:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebViewSpellCheckHelper;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewSpellCheckHelper;Ljava/lang/String;IIIZ)V
    .locals 1
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "node"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "byTouch"    # Z

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->this$0:Landroid/webkit/WebViewSpellCheckHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mByTouch:Z

    iput-object p2, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mWord:Ljava/lang/String;

    iput p3, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mNode:I

    iput p4, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mStart:I

    iput p5, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mEnd:I

    iput-boolean p6, p0, Landroid/webkit/WebViewSpellCheckHelper$SpellCheckItem;->mByTouch:Z

    return-void
.end method
