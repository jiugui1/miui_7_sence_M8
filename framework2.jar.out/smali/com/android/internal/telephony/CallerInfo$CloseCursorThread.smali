.class Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;
.super Ljava/lang/Thread;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseCursorThread"
.end annotation


# instance fields
.field private cursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/android/internal/telephony/CallerInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;->this$0:Lcom/android/internal/telephony/CallerInfo;

    .line 1651
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1652
    iput-object p3, p0, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;->cursor:Landroid/database/Cursor;

    .line 1653
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1667
    :cond_0
    return-void
.end method