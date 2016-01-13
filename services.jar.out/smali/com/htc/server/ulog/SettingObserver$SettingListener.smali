.class public interface abstract Lcom/htc/server/ulog/SettingObserver$SettingListener;
.super Ljava/lang/Object;
.source "SettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/SettingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingListener"
.end annotation


# static fields
.field public static final USER_PROFILING_SETTING:I = 0x1


# virtual methods
.method public abstract onTellHTCSettingChanged(I)V
.end method
