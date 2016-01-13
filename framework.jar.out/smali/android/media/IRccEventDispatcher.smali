.class public interface abstract Landroid/media/IRccEventDispatcher;
.super Ljava/lang/Object;
.source "IRccEventDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRccEventDispatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispatchRccEventChange(IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
