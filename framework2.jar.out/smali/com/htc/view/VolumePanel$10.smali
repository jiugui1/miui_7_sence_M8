.class Lcom/htc/view/VolumePanel$10;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/view/VolumePanel;->createSliders(Ljava/util/HashMap;[Lcom/htc/view/VolumePanel$StreamResources;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/htc/view/VolumePanel$10;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1788
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1789
    .local v0, "objTag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1790
    check-cast v1, Landroid/view/View;

    .line 1791
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 1794
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
