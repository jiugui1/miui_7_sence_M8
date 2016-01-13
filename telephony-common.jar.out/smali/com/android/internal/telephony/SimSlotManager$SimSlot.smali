.class public Lcom/android/internal/telephony/SimSlotManager$SimSlot;
.super Landroid/os/Handler;
.source "SimSlotManager.java"

# interfaces
.implements Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimSlot"
.end annotation


# static fields
.field public static final EVENT_GET_ICCID_DONE:I = 0x1


# instance fields
.field private mCardIsChanged:Z

.field private mCdmaImsi:Ljava/lang/String;

.field private mGsmImsi:Ljava/lang/String;

.field private mIccid:Ljava/lang/String;

.field private mIdentifyDone:Z

.field private mLastIccid:Ljava/lang/String;

.field private mMsg:Landroid/os/Message;

.field private mPIN:Ljava/lang/String;

.field private mPhoneType:I

.field protected mSimType:I

.field private mSlot:I

.field private mVerifiedPIN:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/SimSlotManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SimSlotManager;I)V
    .locals 5
    .param p2, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1225
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1206
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    .line 1207
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    .line 1208
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    .line 1213
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    .line 1216
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCardIsChanged:Z

    .line 1218
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    .line 1219
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mMsg:Landroid/os/Message;

    .line 1221
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    .line 1223
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    .line 1226
    # invokes: Lcom/android/internal/telephony/SimSlotManager;->doSlotIdMapping(I)I
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SimSlotManager;->access$1100(Lcom/android/internal/telephony/SimSlotManager;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    .line 1228
    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SimSlotManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1229
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.basewin.ssm.slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".iccid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mLastIccid:Ljava/lang/String;

    .line 1230
    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " last iccid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mLastIccid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SimSlotManager;->getPhoneForSlot(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 1234
    .local v0, "ph":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x2fe2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1237
    return-void
.end method


# virtual methods
.method public cancelPIN()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1276
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    .line 1278
    iput-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    .line 1279
    return-void
.end method

.method public cardIsChanged()Z
    .locals 3

    .prologue
    .line 1327
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCardIsChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCardIsChanged:Z

    return v0
.end method

.method public confirmPIN()V
    .locals 3

    .prologue
    .line 1269
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmPIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    .line 1273
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    .line 1274
    return-void
.end method

.method public getCdmaImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1291
    const-string v0, ""

    .line 1294
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCdmaMccMnc()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 1299
    :cond_0
    const-string v0, ""

    .line 1302
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGsmImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1307
    const-string v0, ""

    .line 1310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGsmMccMnc()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 1314
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 1315
    :cond_0
    const-string v0, ""

    .line 1318
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPINCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1282
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPINCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mVerifiedPIN:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 1286
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1241
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1263
    :goto_0
    return-void

    .line 1243
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1244
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1246
    .local v1, "data":[B
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1247
    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read iccid fail for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1251
    :cond_0
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    .line 1253
    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccid for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual {p0}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->updateIccid()V

    goto :goto_0

    .line 1241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public identifyPhone(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Message;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1359
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 1360
    .local v0, "cardState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Identify phone card state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1363
    iput v5, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    .line 1364
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    .line 1365
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    .line 1366
    iput-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    .line 1368
    if-eqz p2, :cond_0

    .line 1369
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_3

    .line 1377
    :cond_2
    iput v5, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    .line 1378
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    .line 1379
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    .line 1380
    iput-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    .line 1382
    if-eqz p2, :cond_0

    .line 1383
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1389
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    iget v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SimSlotManager;->getPhoneForSlot(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 1397
    .local v1, "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->updateIccid(Ljava/lang/String;)V

    .line 1398
    iput v5, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    .line 1399
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    .line 1400
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    .line 1401
    iput-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    .line 1402
    if-eqz p2, :cond_0

    .line 1403
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public isCTDualmodeCard()Z
    .locals 2

    .prologue
    .line 1355
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualmodeCard()Z
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    packed-switch v0, :pswitch_data_0

    .line 1350
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1348
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1344
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isIdentifyDone()Z
    .locals 3

    .prologue
    .line 1322
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " identifydone flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    return v0
.end method

.method public onIdentifyDone(Lcom/android/internal/telephony/SimIdentify;)V
    .locals 3
    .param p1, "instance"    # Lcom/android/internal/telephony/SimIdentify;

    .prologue
    .line 1409
    invoke-virtual {p1}, Lcom/android/internal/telephony/SimIdentify;->getSimType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    .line 1410
    invoke-virtual {p1}, Lcom/android/internal/telephony/SimIdentify;->getCDMAImsi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    .line 1411
    invoke-virtual {p1}, Lcom/android/internal/telephony/SimIdentify;->getGSMImsi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    .line 1412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIdentifyDone:Z

    .line 1414
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "identify done, simtype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSimType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cdma imsi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gsm imsi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mMsg:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1418
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mMsg:Landroid/os/Message;

    .line 1420
    return-void
.end method

.method public preparePIN(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1265
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mPIN:Ljava/lang/String;

    .line 1266
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare pin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    return-void
.end method

.method public updateIccid()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1338
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mLastIccid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mCardIsChanged:Z

    .line 1339
    const-string v1, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update iccid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    # getter for: Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "SimSlotManager"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1341
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.basewin.ssm.slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".iccid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1342
    return-void

    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_0
    move v1, v2

    .line 1338
    goto :goto_0
.end method

.method public updateIccid(Ljava/lang/String;)V
    .locals 1
    .param p1, "newIccid"    # Ljava/lang/String;

    .prologue
    .line 1331
    if-nez p1, :cond_0

    .line 1332
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    .line 1335
    :goto_0
    return-void

    .line 1334
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->mIccid:Ljava/lang/String;

    goto :goto_0
.end method
