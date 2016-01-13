.class Landroid/webkit/EditableWebViewImpl2$3;
.super Ljava/lang/Object;
.source "EditableWebViewImpl2.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebViewImpl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebViewImpl2;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebViewImpl2;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl2$3;->this$0:Landroid/webkit/EditableWebViewImpl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method
