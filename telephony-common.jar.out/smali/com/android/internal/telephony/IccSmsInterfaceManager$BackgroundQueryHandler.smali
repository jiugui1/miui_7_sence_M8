.class final Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 1557
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1558
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1570
    packed-switch p1, :pswitch_data_0

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1572
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsDelettingSIMSMS:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1702(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 1573
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDeleteThenLoading:Z
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1800(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1574
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDeleteThenLoading:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 1575
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDeleteThenLoading:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 1577
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1578
    const-string v1, "content://sms/loadallsimsms2db"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1581
    .local v0, "url":Landroid/net/Uri;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBackgroundQueryHandler:Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

    move-result-object v1

    const/16 v2, 0x4b0

    invoke-virtual {v1, v2, v4, v0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1580
    .end local v0    # "url":Landroid/net/Uri;
    :cond_1
    const-string v1, "content://sms/loadalluimsms2db"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "url":Landroid/net/Uri;
    goto :goto_1

    .line 1570
    nop

    :pswitch_data_0
    .packed-switch 0x4b1
        :pswitch_0
    .end packed-switch
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1561
    packed-switch p1, :pswitch_data_0

    .line 1566
    :goto_0
    return-void

    .line 1563
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsLoadingSIMSMS:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1602(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    goto :goto_0

    .line 1561
    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method
