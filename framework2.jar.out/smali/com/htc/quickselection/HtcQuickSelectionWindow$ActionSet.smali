.class public Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;
.super Ljava/lang/Object;
.source "HtcQuickSelectionWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/quickselection/HtcQuickSelectionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionSet"
.end annotation


# instance fields
.field private actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;",
            ">;"
        }
    .end annotation
.end field

.field private ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/htc/quickselection/HtcQuickSelectionWindow;


# direct methods
.method public constructor <init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;)V
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;-><init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;I)V

    .line 805
    return-void
.end method

.method public constructor <init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 812
    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->this$0:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->actions:Ljava/util/ArrayList;

    .line 815
    return-void
.end method

.method static synthetic access$000(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public AddAction(Ljava/lang/Object;Ljava/lang/String;Landroid/view/View$OnClickListener;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "descript"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 841
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    const/4 v0, 0x0

    .line 847
    :goto_0
    return v0

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->actions:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->this$0:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;-><init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;Ljava/lang/Object;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAction(I)Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 872
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public removeAction(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 856
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    const/4 v1, 0x0

    .line 863
    :goto_0
    return v1

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 860
    .local v0, "i":I
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 861
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 863
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 824
    return-void
.end method
