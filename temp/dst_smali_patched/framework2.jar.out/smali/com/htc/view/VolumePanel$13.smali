.class Lcom/htc/view/VolumePanel$13;
.super Landroid/os/AsyncTask;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/view/VolumePanel;->getDNDStateInBackgroud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/htc/view/VolumePanel$13;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/htc/view/VolumePanel$13;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "parm"    # [Ljava/lang/Void;

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel$13;->this$0:Lcom/htc/view/VolumePanel;

    iget-object v0, v3, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/htc/view/VolumePanel$13;->this$0:Lcom/htc/view/VolumePanel;

    const-string v4, "htc_dnd_feature_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/htc/view/VolumePanel;->mDndMode:I
    invoke-static {v3, v4}, Lcom/htc/view/VolumePanel;->access$2502(Lcom/htc/view/VolumePanel;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return-object v3

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/htc/view/VolumePanel$13;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/Void;

    .prologue
    return-void
.end method
