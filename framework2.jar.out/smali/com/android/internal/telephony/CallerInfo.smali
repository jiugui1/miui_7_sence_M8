.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIfCallerInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;
    }
.end annotation


# static fields
.field private static CHECK_CURSOR_MAXIMUM_NUMBER:I = 0x0

.field private static final CID:Ljava/lang/String;

.field private static CONTACT_PRIORITY_ACCOUNT:I = 0x0

.field private static CONTACT_PRIORITY_DEFAULT:I = 0x0

.field private static CONTACT_PRIORITY_DEVICE_CONTACT:I = 0x0

.field private static CONTACT_PRIORITY_NAME:I = 0x0

.field private static CONTACT_PRIORITY_NUMBER:I = 0x0

.field private static CONTACT_PRIORITY_PHOTO:I = 0x0

.field private static CONTACT_PRIORITY_SIM_CONTACT:I = 0x0

.field private static final S_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field private static final VDBG:Z

.field private static sSkipVmCheck:Z


# instance fields
.field public OrigDialString:Ljava/lang/String;

.field public SN_icon:Landroid/graphics/drawable/Drawable;

.field public SN_label_clause:Ljava/lang/CharSequence;

.field public SN_status:Ljava/lang/String;

.field public SN_timestamp:Ljava/lang/Long;

.field public accountType:Ljava/lang/String;

.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public cachedPhotoSmall:Landroid/graphics/Bitmap;

.field public cachedRefPhotoBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field public cachedRefPhotoSmall:Landroid/graphics/Bitmap;

.field public cnapName:Ljava/lang/String;

.field public contactExists:Z

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public date:Ljava/lang/String;

.field public geoDescription:Ljava/lang/String;

.field public isCachedPhotoCurrent:Z

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public mMapUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public person_id:J

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public rawContactId:J

.field public recordNumber:J

.field public shouldSendToVoicemail:Z

.field public status_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 77
    const-string v0, "CallerInfo"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    .line 256
    sput-boolean v1, Lcom/android/internal/telephony/CallerInfo;->sSkipVmCheck:Z

    .line 1191
    sput v1, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_DEFAULT:I

    .line 1192
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_ACCOUNT:I

    .line 1193
    sput v2, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_SIM_CONTACT:I

    .line 1194
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_DEVICE_CONTACT:I

    .line 1195
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_PHOTO:I

    .line 1196
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_NAME:I

    .line 1200
    const/16 v0, 0x20

    sput v0, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_NUMBER:I

    .line 1201
    const/16 v0, 0xa

    sput v0, Lcom/android/internal/telephony/CallerInfo;->CHECK_CURSOR_MAXIMUM_NUMBER:I

    .line 1202
    invoke-static {}, Lcom/android/internal/telephony/CallerInfo;->getCID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CallerInfo;->CID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 261
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 262
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 263
    return-void
.end method

.method private static addMoreHtcInfoByCursor(Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "info"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    const/4 v3, -0x1

    .line 1156
    const-string v1, "raw_contact_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1157
    .local v0, "columnIndex":I
    if-eq v0, v3, :cond_0

    .line 1158
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    .line 1162
    :cond_0
    const-string v1, "status_update_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1163
    if-eq v0, v3, :cond_1

    .line 1164
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    .line 1167
    :cond_1
    const-string v1, "account_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1168
    if-eq v0, v3, :cond_4

    .line 1169
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    .line 1170
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1171
    :cond_2
    const-string v1, "com.anddroid.contacts.sim"

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.contacts.ruim"

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.contacts.subsim"

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1174
    :cond_3
    const-string v1, "sourceid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1175
    if-eq v0, v3, :cond_4

    .line 1176
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    .line 1189
    :cond_4
    :goto_0
    return-void

    .line 1181
    :cond_5
    const-string v1, "com.anddroid.contacts.sim"

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1182
    const-string v1, "sourceid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1183
    if-eq v0, v3, :cond_4

    .line 1184
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    goto :goto_0
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 527
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object p2

    .line 536
    .end local v0    # "username":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private static getCID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1416
    const/4 v1, 0x0

    .line 1418
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    const-string v2, "ro.cid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1422
    :goto_0
    return-object v1

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CallerInfo"

    const-string v3, "getCID()"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 557
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 559
    .local v0, "callerID":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 560
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 562
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 563
    move-object v0, v2

    .line 569
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 565
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static getCallerIdAndPhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "mNoPhotoResource"    # I
    .param p3, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 1548
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1549
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 1550
    .local v0, "callerID":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 1552
    .local v4, "personID":J
    if-eqz v1, :cond_0

    .line 1553
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1554
    .local v3, "name":Ljava/lang/String;
    iget-wide v4, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1556
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1557
    move-object v0, v3

    .line 1558
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1559
    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 1560
    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1561
    .local v2, "mUri":Landroid/net/Uri;
    invoke-static {v1, p0, p3, v2, p2}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 1572
    .end local v2    # "mUri":Landroid/net/Uri;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1564
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1568
    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?limit=10"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 433
    .local v1, "queryRef":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 282
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 283
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    iput v6, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 284
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 285
    iput v10, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 286
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 287
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 288
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 289
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 292
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    .line 293
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    .line 294
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    .line 295
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    .line 297
    sget-boolean v4, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "CallerInfo"

    const-string v7, "getCallerInfo() based on cursor..."

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "type":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 302
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    invoke-static {p0, p2, v1}, Lcom/android/internal/telephony/CallerInfo;->getHtcCallerInfoV2(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    .line 409
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_2
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 413
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 414
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 416
    return-object v1

    .line 304
    :cond_3
    const-string v4, "vnd.android.cursor.dir/htc_phone_lookup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 311
    invoke-static {p0, p2, v1, p3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfoHtcPhoneFilter(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 313
    :cond_4
    const-string v4, "vnd.android.cursor.dir/phone_equall"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 319
    invoke-static {p0, p2, v1, p3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfoHtcPhoneFilter(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 323
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    const-string v4, "display_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, "columnIndex":I
    if-eq v0, v10, :cond_6

    .line 333
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 337
    :cond_6
    const-string v4, "number"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 338
    if-eq v0, v10, :cond_7

    .line 339
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 343
    :cond_7
    const-string v4, "normalized_number"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 344
    if-eq v0, v10, :cond_8

    .line 345
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 349
    :cond_8
    const-string v4, "label"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 350
    if-eq v0, v10, :cond_9

    .line 351
    const-string v4, "type"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 352
    .local v3, "typeColumnIndex":I
    if-eq v3, v10, :cond_9

    .line 353
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 354
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 355
    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v4, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 362
    .end local v3    # "typeColumnIndex":I
    :cond_9
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 363
    if-eq v0, v10, :cond_d

    .line 364
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 365
    sget-boolean v4, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_a

    const-string v4, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> got info.person_id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_a
    :goto_1
    const-string v4, "raw_contact_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 378
    if-eq v0, v10, :cond_b

    .line 379
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    .line 384
    :cond_b
    const-string v4, "status_update_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 385
    if-eq v0, v10, :cond_c

    .line 386
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    .line 392
    :cond_c
    const-string v4, "custom_ringtone"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 393
    if-eq v0, v10, :cond_e

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 394
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 401
    :goto_2
    const-string v4, "send_to_voicemail"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 402
    if-eq v0, v10, :cond_f

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_f

    move v4, v5

    :goto_3
    iput-boolean v4, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 404
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    goto/16 :goto_0

    .line 368
    :cond_d
    const-string v4, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find person_id column for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 396
    :cond_e
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_2

    :cond_f
    move v4, v6

    .line 402
    goto :goto_3
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?limit=10"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 445
    .local v1, "queryRef":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 461
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CallerInfo"

    const-string v3, "getCallerInfo() based on number..."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    const/4 v1, 0x0

    .line 512
    :cond_1
    :goto_0
    return-object v1

    .line 470
    :cond_2
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 471
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 473
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0

    .line 476
    :cond_4
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0

    .line 478
    :cond_5
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 479
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0

    .line 487
    :cond_6
    sget-object v2, Landroid/provider/HtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 496
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 499
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 503
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 504
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 507
    :cond_7
    const-wide/16 v2, 0x0

    iget-wide v4, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1609
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1610
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1642
    :cond_1
    :goto_0
    return-object v1

    .line 1617
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1619
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0

    .line 1621
    :cond_3
    sget-object v2, Landroid/provider/HtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1624
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1625
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1629
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1630
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1633
    :cond_4
    const-wide/16 v2, 0x0

    iget-wide v4, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_5

    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    :cond_5
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1636
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private static getCallerInfoHtcPhoneFilter(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "info"    # Lcom/android/internal/telephony/CallerInfo;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 1076
    :try_start_0
    invoke-static {p1, p3}, Lcom/android/internal/telephony/CallerInfo;->gotoBestPosition(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    if-eq v6, v4, :cond_4

    .line 1082
    const-string v4, "display_name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1083
    .local v0, "columnIndex":I
    if-eq v0, v6, :cond_0

    .line 1084
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1088
    :cond_0
    const-string v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1089
    if-eq v0, v6, :cond_1

    .line 1090
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1094
    :cond_1
    const-string v4, "data2"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1095
    if-eq v0, v6, :cond_2

    .line 1096
    const-string v4, "data3"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1098
    .local v2, "labelColumnIndex":I
    if-eq v2, v6, :cond_2

    .line 1099
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 1100
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 1101
    iget v4, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v5, p2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 1108
    .end local v2    # "labelColumnIndex":I
    :cond_2
    const-string v4, "contact_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1109
    if-eq v0, v6, :cond_3

    .line 1110
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1115
    :cond_3
    const-string v4, "custom_ringtone"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1116
    if-eq v0, v6, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1117
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 1124
    :goto_0
    const-string v4, "send_to_voicemail"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1125
    if-eq v0, v6, :cond_6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_6

    :goto_1
    iput-boolean v3, p2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 1127
    const/4 v3, 0x1

    iput-boolean v3, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 1129
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->addMoreHtcInfoByCursor(Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1144
    .end local v0    # "columnIndex":I
    :cond_4
    :goto_2
    return-object p2

    .line 1119
    .restart local v0    # "columnIndex":I
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1137
    .end local v0    # "columnIndex":I
    :catch_0
    move-exception v1

    .line 1141
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CallerInfo"

    const-string v4, "getCallerInfoHtcPhoneFilter"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1125
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "columnIndex":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getCallerPersonId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1526
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 1527
    .local v2, "info":Lcom/android/internal/telephony/CallerInfo;
    const-wide/16 v0, 0x0

    .line 1529
    .local v0, "callerID":J
    if-eqz v2, :cond_0

    .line 1530
    iget-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1533
    :cond_0
    return-wide v0
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 724
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 732
    .local v1, "columnName":Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 735
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "CallerInfo"

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_1
    const-string v1, "contact_id"

    .line 752
    :goto_0
    if-eqz v1, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 753
    .local v0, "columnIndex":I
    :goto_1
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_2

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (columnIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for person_id lookup..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_2
    return v0

    .line 737
    .end local v0    # "columnIndex":I
    :cond_3
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 740
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_4

    const-string v3, "CallerInfo"

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_4
    const-string v1, "contact_id"

    goto :goto_0

    .line 743
    :cond_5
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 747
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_6

    const-string v3, "CallerInfo"

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_6
    const-string v1, "_id"

    goto :goto_0

    .line 750
    :cond_7
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 752
    :cond_8
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 829
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 831
    .local v2, "detector":Landroid/location/CountryDetector;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 832
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 863
    .end local v0    # "country":Landroid/location/Country;
    .local v1, "countryIso":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 834
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 835
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 836
    .restart local v1    # "countryIso":Ljava/lang/String;
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 839
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_2
    const-string v1, "US"

    .restart local v1    # "countryIso":Ljava/lang/String;
    goto :goto_0

    .line 847
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .restart local v0    # "country":Landroid/location/Country;
    if-eqz v0, :cond_4

    .line 848
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "countryIso":Ljava/lang/String;
    goto :goto_0

    .line 849
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    .line 850
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 851
    .restart local v1    # "countryIso":Ljava/lang/String;
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 859
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_5
    const-string v1, "US"

    .restart local v1    # "countryIso":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 781
    sget-boolean v9, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v9, :cond_0

    .line 782
    const-string v1, "xxxxx"

    .line 785
    .local v1, "des":Ljava/lang/String;
    const-string v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getGeoDescription(\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\')..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    .end local v1    # "des":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 818
    :cond_1
    :goto_0
    return-object v2

    .line 793
    :cond_2
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v8

    .line 794
    .local v8, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v4

    .line 796
    .local v4, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v5, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 797
    .local v5, "locale":Ljava/util/Locale;
    invoke-static {p0, v5}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "countryIso":Ljava/lang/String;
    const/4 v7, 0x0

    .line 800
    .local v7, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    sget-boolean v9, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v9, :cond_3

    const-string v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for countryIso \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_3
    invoke-virtual {v8, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v7

    .line 803
    sget-boolean v9, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v9, :cond_4

    const-string v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- parsed number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :cond_4
    :goto_1
    if-eqz v7, :cond_1

    .line 814
    invoke-virtual {v4, v7, v5}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, "description":Ljava/lang/String;
    sget-boolean v9, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v9, :cond_1

    const-string v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- got description: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 804
    .end local v2    # "description":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 806
    .local v3, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v6, ""

    .line 809
    .local v6, "logNumber":Ljava/lang/String;
    :goto_2
    const-string v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 806
    .end local v6    # "logNumber":Ljava/lang/String;
    :cond_5
    const-string v6, "xxxxx"

    goto :goto_2
.end method

.method private static getHtcCallerInfoV2(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "info"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 979
    if-eqz p1, :cond_6

    .line 980
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 984
    const-string v2, "display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 985
    .local v0, "columnIndex":I
    if-eq v0, v6, :cond_0

    .line 986
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 990
    :cond_0
    const-string v2, "data1"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 991
    if-eq v0, v6, :cond_1

    .line 992
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 996
    :cond_1
    const-string v2, "data3"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 997
    if-eq v0, v6, :cond_2

    .line 998
    const-string v2, "data2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 999
    .local v1, "typeColumnIndex":I
    if-eq v1, v6, :cond_2

    .line 1000
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 1001
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 1002
    iget v2, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v2, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 1009
    .end local v1    # "typeColumnIndex":I
    :cond_2
    const-string v2, "contact_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1010
    if-eq v0, v6, :cond_3

    .line 1011
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1016
    :cond_3
    const-string v2, "raw_contact_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1017
    if-eq v0, v6, :cond_4

    .line 1018
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    .line 1023
    :cond_4
    const-string v2, "status_update_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1024
    if-eq v0, v6, :cond_5

    .line 1025
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    .line 1031
    :cond_5
    const-string v2, "custom_ringtone"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1032
    if-eq v0, v6, :cond_7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1033
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 1040
    :goto_0
    const-string v2, "send_to_voicemail"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1041
    if-eq v0, v6, :cond_8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_1
    iput-boolean v2, p2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 1043
    iput-boolean v3, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 1047
    .end local v0    # "columnIndex":I
    :cond_6
    return-object p2

    .line 1035
    .restart local v0    # "columnIndex":I
    :cond_7
    const/4 v2, 0x0

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_0

    .line 1041
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1435
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1436
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 1439
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1453
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 1454
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    iput v5, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1455
    iput-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 1456
    const/4 v3, 0x2

    iput v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 1457
    iput-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 1458
    iput-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 1459
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 1461
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1463
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfo"

    const-string v4, "construct callerInfo from cursor"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    const-string v3, "CallerInfo"

    const-string v4, "getSIMCallerInfo"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    if-eqz p2, :cond_4

    .line 1469
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1474
    const-string v3, "name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1475
    .local v0, "columnIndex":I
    if-eq v0, v7, :cond_1

    .line 1476
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1480
    :cond_1
    const-string v3, "number"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1481
    if-eq v0, v7, :cond_2

    .line 1482
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1487
    :cond_2
    iput-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 1491
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 1494
    const-string v3, "recordNumber"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1496
    if-eq v0, v7, :cond_3

    .line 1498
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    .line 1504
    .end local v0    # "columnIndex":I
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "closeCursorThread"

    invoke-direct {v2, v1, v3, p2}, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;-><init>(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1505
    .local v2, "thread":Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;
    if-eqz v2, :cond_4

    .line 1506
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;->start()V

    .line 1511
    .end local v2    # "thread":Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;
    :cond_4
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 1512
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1513
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 1514
    return-object v1
.end method

.method private static gotoBestPosition(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 23
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "originalNumber"    # Ljava/lang/String;

    .prologue
    .line 1232
    const/4 v2, -0x1

    .line 1234
    .local v2, "bestPosition":I
    if-eqz p0, :cond_9

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1235
    const-string v19, "account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1236
    .local v18, "typeIdx":I
    const-string v19, "photo_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1237
    .local v14, "photoIdx":I
    const-string v19, "display_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1238
    .local v11, "nameIdx":I
    const-string v19, "data1"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1244
    .local v13, "numberIdx":I
    const/4 v7, 0x0

    .line 1245
    .local v7, "matcharray":[I
    const/4 v5, 0x0

    .line 1246
    .local v5, "fullymatch":Z
    const/4 v9, 0x0

    .line 1247
    .local v9, "maxmatch":I
    const/4 v6, 0x0

    .line 1250
    .local v6, "isunique":Z
    sget-object v19, Lcom/android/internal/telephony/CallerInfo;->CID:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "HTC__J15"

    sget-object v20, Lcom/android/internal/telephony/CallerInfo;->CID:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "HTC__332"

    sget-object v20, Lcom/android/internal/telephony/CallerInfo;->CID:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    :cond_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 1251
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v13, v1}, Lcom/android/internal/telephony/CallerInfo;->outputMatchInfo(Landroid/database/Cursor;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 1252
    .local v8, "matchinfo":Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 1253
    const-string v19, "MatchArray"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 1254
    const-string v19, "FullyMatch"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1255
    const-string v19, "IsUnique"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1256
    const-string v19, "MaxMatch"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1259
    :cond_1
    if-nez v6, :cond_2

    if-nez v5, :cond_2

    .line 1260
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v3, v2

    .line 1323
    .end local v2    # "bestPosition":I
    .end local v5    # "fullymatch":Z
    .end local v6    # "isunique":Z
    .end local v7    # "matcharray":[I
    .end local v8    # "matchinfo":Landroid/os/Bundle;
    .end local v9    # "maxmatch":I
    .end local v11    # "nameIdx":I
    .end local v13    # "numberIdx":I
    .end local v14    # "photoIdx":I
    .end local v18    # "typeIdx":I
    .local v3, "bestPosition":I
    :goto_0
    return v3

    .line 1263
    .end local v3    # "bestPosition":I
    .restart local v2    # "bestPosition":I
    .restart local v5    # "fullymatch":Z
    .restart local v6    # "isunique":Z
    .restart local v7    # "matcharray":[I
    .restart local v8    # "matchinfo":Landroid/os/Bundle;
    .restart local v9    # "maxmatch":I
    .restart local v11    # "nameIdx":I
    .restart local v13    # "numberIdx":I
    .restart local v14    # "photoIdx":I
    .restart local v18    # "typeIdx":I
    :cond_2
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1267
    .end local v8    # "matchinfo":Landroid/os/Bundle;
    :cond_3
    const/4 v4, 0x0

    .line 1268
    .local v4, "count":I
    sget v17, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_DEFAULT:I

    .line 1270
    .local v17, "topPriority":I
    :cond_4
    sget v16, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_DEFAULT:I

    .line 1271
    .local v16, "priority":I
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getPosition()I

    move-result v15

    .line 1276
    .local v15, "position":I
    if-eqz v7, :cond_5

    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_5

    aget v19, v7, v4

    move/from16 v0, v19

    if-ne v0, v9, :cond_5

    .line 1277
    sget v19, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_NUMBER:I

    or-int v16, v16, v19

    .line 1281
    :cond_5
    const/16 v19, -0x1

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 1282
    sget v19, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_ACCOUNT:I

    or-int v16, v16, v19

    .line 1283
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v11, :cond_6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v13, :cond_6

    .line 1284
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1285
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1286
    .local v12, "number":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    invoke-static {v10, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 1288
    sget v19, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_NAME:I

    or-int v16, v16, v19

    .line 1291
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "number":Ljava/lang/String;
    :cond_6
    const-string v19, "com.anddroid.contacts.sim"

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 1292
    sget v19, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_DEVICE_CONTACT:I

    or-int v16, v16, v19

    .line 1294
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v14, :cond_7

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-gez v19, :cond_7

    .line 1295
    sget v19, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_PHOTO:I

    or-int v16, v16, v19

    .line 1303
    :cond_7
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 1304
    move v2, v15

    .line 1305
    move/from16 v17, v16

    .line 1313
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 1314
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isLast()Z

    move-result v19

    if-nez v19, :cond_9

    sget v19, Lcom/android/internal/telephony/CallerInfo;->CHECK_CURSOR_MAXIMUM_NUMBER:I

    move/from16 v0, v19

    if-le v0, v4, :cond_9

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-nez v19, :cond_4

    .line 1321
    .end local v4    # "count":I
    .end local v5    # "fullymatch":Z
    .end local v6    # "isunique":Z
    .end local v7    # "matcharray":[I
    .end local v9    # "maxmatch":I
    .end local v11    # "nameIdx":I
    .end local v13    # "numberIdx":I
    .end local v14    # "photoIdx":I
    .end local v15    # "position":I
    .end local v16    # "priority":I
    .end local v17    # "topPriority":I
    .end local v18    # "typeIdx":I
    :cond_9
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v3, v2

    .line 1323
    .end local v2    # "bestPosition":I
    .restart local v3    # "bestPosition":I
    goto/16 :goto_0

    .line 1299
    .end local v3    # "bestPosition":I
    .restart local v2    # "bestPosition":I
    .restart local v4    # "count":I
    .restart local v5    # "fullymatch":Z
    .restart local v6    # "isunique":Z
    .restart local v7    # "matcharray":[I
    .restart local v9    # "maxmatch":I
    .restart local v11    # "nameIdx":I
    .restart local v13    # "numberIdx":I
    .restart local v14    # "photoIdx":I
    .restart local v15    # "position":I
    .restart local v16    # "priority":I
    .restart local v17    # "topPriority":I
    .restart local v18    # "typeIdx":I
    :cond_a
    sget v19, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_SIM_CONTACT:I

    or-int v16, v16, v19

    goto :goto_1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 674
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 677
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static outputMatchInfo(Landroid/database/Cursor;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 17
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "index"    # I
    .param p2, "originalnumber"    # Ljava/lang/String;

    .prologue
    .line 1330
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1331
    const/4 v7, 0x0

    .line 1386
    :goto_0
    return-object v7

    .line 1334
    :cond_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v14

    new-array v6, v14, [I

    .line 1335
    .local v6, "matcharray":[I
    const/4 v2, 0x0

    .line 1336
    .local v2, "cursorcount":I
    const/4 v4, 0x0

    .line 1337
    .local v4, "fullymatch":I
    const/4 v8, 0x0

    .line 1339
    .local v8, "maxmatch":I
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1340
    .local v11, "originalnum":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    sget v15, Landroid/telephony/PhoneNumberUtils;->HTC_MIN_MATCH:I

    if-le v14, v15, :cond_6

    const/4 v14, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    sget v16, Landroid/telephony/PhoneNumberUtils;->HTC_MIN_MATCH:I

    sub-int v15, v15, v16

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1343
    .local v12, "targenum":Ljava/lang/String;
    :goto_1
    const/4 v14, -0x1

    move/from16 v0, p1

    if-eq v14, v0, :cond_4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    if-eqz p0, :cond_4

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1345
    :cond_1
    invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1346
    .local v10, "number":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1347
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1349
    .local v13, "tempnumber":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    sget v15, Landroid/telephony/PhoneNumberUtils;->HTC_MIN_MATCH:I

    if-le v14, v15, :cond_7

    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    sget v16, Landroid/telephony/PhoneNumberUtils;->HTC_MIN_MATCH:I

    sub-int v15, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1351
    .local v3, "diffnum":Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    .line 1352
    .local v1, "count":I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1353
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1355
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 1356
    add-int/lit8 v4, v4, 0x1

    .line 1361
    :goto_3
    if-ge v8, v1, :cond_2

    .line 1362
    move v8, v1

    .line 1365
    :cond_2
    aput v1, v6, v2

    .line 1367
    .end local v1    # "count":I
    .end local v3    # "diffnum":Ljava/lang/String;
    .end local v13    # "tempnumber":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1368
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isLast()Z

    move-result v14

    if-nez v14, :cond_4

    sget v14, Lcom/android/internal/telephony/CallerInfo;->CHECK_CURSOR_MAXIMUM_NUMBER:I

    if-le v14, v2, :cond_4

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1371
    .end local v10    # "number":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    .line 1373
    .local v9, "maxmatchcounter":I
    if-lez v8, :cond_9

    .line 1374
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v14, v6

    if-ge v5, v14, :cond_9

    .line 1375
    aget v14, v6, v5

    if-ne v14, v8, :cond_5

    .line 1376
    add-int/lit8 v9, v9, 0x1

    .line 1374
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1340
    .end local v5    # "i":I
    .end local v9    # "maxmatchcounter":I
    .end local v12    # "targenum":Ljava/lang/String;
    :cond_6
    const-string v12, ""

    goto :goto_1

    .line 1349
    .restart local v10    # "number":Ljava/lang/String;
    .restart local v12    # "targenum":Ljava/lang/String;
    .restart local v13    # "tempnumber":Ljava/lang/String;
    :cond_7
    const-string v3, ""

    goto :goto_2

    .line 1358
    .restart local v1    # "count":I
    .restart local v3    # "diffnum":Ljava/lang/String;
    :cond_8
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/CallerInfo;->regionMatches(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 1381
    .end local v1    # "count":I
    .end local v3    # "diffnum":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    .end local v13    # "tempnumber":Ljava/lang/String;
    .restart local v9    # "maxmatchcounter":I
    :cond_9
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1382
    .local v7, "matchinfo":Landroid/os/Bundle;
    const-string v14, "MatchArray"

    invoke-virtual {v7, v14, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1383
    const-string v15, "FullyMatch"

    if-lez v4, :cond_a

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v7, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1384
    const-string v15, "IsUnique"

    const/4 v14, 0x1

    if-ne v9, v14, :cond_b

    const/4 v14, 0x1

    :goto_6
    invoke-virtual {v7, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1385
    const-string v14, "MaxMatch"

    invoke-virtual {v7, v14, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1383
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .line 1384
    :cond_b
    const/4 v14, 0x0

    goto :goto_6
.end method

.method private static regionMatches(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "diff"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1390
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return v3

    .line 1393
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 1394
    .local v7, "targetlen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1395
    .local v5, "difflen":I
    new-array v6, v7, [C

    .line 1396
    .local v6, "targetChar":[C
    new-array v4, v5, [C

    .line 1397
    .local v4, "diffChar":[C
    if-lt v7, v5, :cond_3

    move v2, v5

    .line 1398
    .local v2, "comparelen":I
    :goto_1
    invoke-virtual {p0, v3, v7, v6, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1399
    invoke-virtual {p1, v3, v5, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1401
    const/4 v3, 0x0

    .line 1402
    .local v3, "count":I
    :cond_2
    if-ge v3, v2, :cond_0

    .line 1403
    add-int/lit8 v3, v3, 0x1

    .line 1404
    sub-int v8, v7, v3

    aget-char v0, v6, v8

    .line 1405
    .local v0, "c1":C
    sub-int v8, v5, v3

    aget-char v1, v4, v8

    .line 1406
    .local v1, "c2":C
    if-eq v0, v1, :cond_2

    .line 1407
    add-int/lit8 v3, v3, -0x1

    .line 1408
    goto :goto_0

    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "comparelen":I
    .end local v3    # "count":I
    :cond_3
    move v2, v7

    .line 1397
    goto :goto_1
.end method


# virtual methods
.method public addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 932
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedPhotoSmall()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCachedRefPhotoSmall()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cachedRefPhotoSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->OrigDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()J
    .locals 2

    .prologue
    .line 1767
    iget-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    return-wide v0
.end method

.method public getSnIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSnLabelClause()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->SN_label_clause:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSnStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    return-object v0
.end method

.method public getSnTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->SN_timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 1757
    iget-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    return-wide v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 944
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-object v1

    .line 948
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ArrayIndexOutOfBoundsException key ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x104030b

    .line 602
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 606
    :try_start_0
    const-string v2, "com.htc"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 607
    .local v1, "htcContext":Landroid/content/Context;
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v2, :cond_0

    .line 610
    const v2, 0x104030b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v1    # "htcContext":Landroid/content/Context;
    :goto_0
    const v2, 0x10804a4

    iput v2, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 629
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 630
    return-object p0

    .line 615
    .restart local v1    # "htcContext":Landroid/content/Context;
    :cond_0
    const v2, 0x204018f

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 618
    .end local v1    # "htcContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 620
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CallerInfo"

    const-string v3, "unable to find htcContext."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 626
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x104030b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 637
    const v0, 0x10804a4

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 639
    return-object p0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 4

    .prologue
    .line 653
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 656
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "voiceMailLabel":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    .end local v1    # "voiceMailLabel":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 659
    :catch_0
    move-exception v0

    .line 665
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method markAsVoiceMail(Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1587
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 1590
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 1591
    .local v1, "voiceMailLabel":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1592
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1593
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    .end local v1    # "voiceMailLabel":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1594
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 964
    const/4 v0, 0x0

    .line 965
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    .line 1773
    return-void
.end method

.method public setCachedPhotoSmall(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoSmall:Landroid/graphics/Bitmap;

    .line 1733
    return-void
.end method

.method public setCachedRefPhotoSamll(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->cachedRefPhotoSmall:Landroid/graphics/Bitmap;

    .line 1743
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    .line 1673
    return-void
.end method

.method public setOrigDialString(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1722
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->OrigDialString:Ljava/lang/String;

    .line 1723
    return-void
.end method

.method public setRecordNumber(J)V
    .locals 0
    .param p1, "number"    # J

    .prologue
    .line 1762
    iput-wide p1, p0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    .line 1763
    return-void
.end method

.method public setSnIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    .line 1683
    return-void
.end method

.method public setSnLabelClause(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "clause"    # Ljava/lang/CharSequence;

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->SN_label_clause:Ljava/lang/CharSequence;

    .line 1693
    return-void
.end method

.method public setSnStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    .line 1703
    return-void
.end method

.method public setSnTimestamp(Ljava/lang/Long;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/Long;

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->SN_timestamp:Ljava/lang/Long;

    .line 1713
    return-void
.end method

.method public setStatusId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 1752
    iput-wide p1, p0, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    .line 1753
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 872
    const/4 v0, 0x0

    .line 911
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "non-null"

    goto :goto_0

    :cond_1
    const-string v1, "non-null"

    goto :goto_1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 772
    .local v0, "number":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 773
    return-void

    .line 771
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method
