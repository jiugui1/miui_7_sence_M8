.class public interface abstract Lcom/htc/internal/widget/HtcPopupFactory$HtcPopupBubble;
.super Ljava/lang/Object;
.source "HtcPopupFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/internal/widget/HtcPopupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HtcPopupBubble"
.end annotation


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract dismissWithoutAnimation()V
.end method

.method public abstract getListView()Landroid/view/View;
.end method

.method public abstract internalDismiss()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setAdapter(Landroid/widget/ListAdapter;)V
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public abstract setContentWidth(I)V
.end method

.method public abstract setInputMethodMode(I)V
.end method

.method public abstract setModal(Z)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setOnItemClickListener(Ljava/lang/Object;)V
.end method

.method public abstract setVerticalOffset(I)V
.end method

.method public abstract show()V
.end method
