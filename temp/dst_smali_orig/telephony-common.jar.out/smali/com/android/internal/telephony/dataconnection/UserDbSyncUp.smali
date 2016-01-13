.class public Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;
.super Landroid/os/Handler;
.source "UserDbSyncUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;
    }
.end annotation


# static fields
.field private static final CDMA_PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

.field private static final DBG:Z = true

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_CACHE_RELOAD:I = 0x1

.field private static final EVENT_DB_RELOAD:I = 0x3

.field private static final EVENT_SIM_LOADED:I = 0x0

.field private static final EVENT_UPDATE_FROM_NV:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UdbSync"

.field private static final NV_APNS_MAX:I

.field private static final PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

.field private static final UNKNOWN:I = -0x1

.field private static final maxCreateDBcount:I = 0x5


# instance fields
.field allowNVupdate:Z

.field private bMccMncUpdate:Z

.field private bMccmnc_apn_property:Z

.field private final classIdOfDefaultType:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

.field private createDBcount:I

.field private final indexOfDefaultType:I

.field isUdbSActive:Z

.field private mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private mCr:Landroid/content/ContentResolver;

.field private mDbChangeDuringReload:Z

.field private mDbObserver:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;

.field private mDbReloadThread:Ljava/lang/Thread;

.field private mDbUpdateNvNotConfirmed:[Z

.field mDpt:Lcom/android/internal/telephony/dataconnection/DataProfileTracker;

.field private mIccCard:Lcom/android/internal/telephony/uicc/IccCardProxy;

.field private mMccMnc:Ljava/lang/String;

.field private mNVapns:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private mNvUpdateDbNotConfirmed:[Z

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field phone_type:I

.field private userIntentionOfPdn:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://telephony/carriers/preferapn_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    const-string v0, "content://cdmaapn/carriers/preferapn_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->CDMA_PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->values()[Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->NV_APNS_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/internal/telephony/dataconnection/DataProfileTracker;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "dpt"    # Lcom/android/internal/telephony/dataconnection/DataProfileTracker;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->isUdbSActive:Z

    invoke-static {v8, v8}, Lcom/android/internal/telephony/dataconnection/DataProfileMappingTable;->get(II)Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->classIdOfDefaultType:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->classIdOfDefaultType:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->ordinal()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->allowNVupdate:Z

    iput v8, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->createDBcount:I

    iput-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->bMccmnc_apn_property:Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    iput-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbChangeDuringReload:Z

    sget v7, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->NV_APNS_MAX:I

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNVapns:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    sget v7, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->NV_APNS_MAX:I

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Z

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    sget v7, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->NV_APNS_MAX:I

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Z

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    sget v7, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->NV_APNS_MAX:I

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->userIntentionOfPdn:[I

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->userIntentionOfPdn:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v0, v3

    .local v2, "i":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->userIntentionOfPdn:[I

    const/4 v8, -0x1

    aput v8, v7, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    new-instance v7, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;

    invoke-direct {v7, p0, p0}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;-><init>(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbObserver:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->phone_type:I

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDpt:Lcom/android/internal/telephony/dataconnection/DataProfileTracker;

    const-string v7, "UdbSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phone_type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->phone_type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->phone_type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Telephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbObserver:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    :goto_1
    const/4 v5, 0x0

    .local v5, "manager":Lcom/htc/customization/HtcCustomizationManager;
    const/4 v6, 0x0

    .local v6, "reader":Lcom/htc/customization/HtcCustomizationReader;
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v5

    const-string v7, "Android_Ril"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "mccmnc_get_from_apn_property"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->bMccmnc_apn_property:Z

    const-string v7, "UdbSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bMccmnc_apn_property = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->bMccmnc_apn_property:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    .end local v5    # "manager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v6    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbObserver:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .restart local v5    # "manager":Lcom/htc/customization/HtcCustomizationManager;
    .restart local v6    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "UdbSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot read customization value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->loadDb()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbChangeDuringReload:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbChangeDuringReload:Z

    return p1
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->bMccmnc_apn_property:Z

    if-nez v0, :cond_0

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.apn.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadDb()Ljava/util/ArrayList;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v36, v3

    const/4 v3, 0x1

    const-string v4, "apn"

    aput-object v4, v36, v3

    .local v36, "projection":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .local v37, "selection":Ljava/lang/String;
    const/16 v32, 0x0

    .local v32, "c":Landroid/database/Cursor;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .local v31, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const-string v3, "UdbSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone_type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->phone_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UdbSync"

    const-string v4, "load the apnlist from UI database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, -0x1

    .local v30, "activeId":I
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->phone_type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->CDMA_PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    :goto_0
    if-eqz v32, :cond_1

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    const-string v3, "UdbSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB active:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    const/16 v32, 0x0

    :cond_1
    const-string v3, "UdbSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    .local v29, "activeApnFound":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->phone_type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "name ASC"

    move-object/from16 v5, v37

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    :goto_1
    if-eqz v32, :cond_c

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "dns1"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .local v33, "dns1index":I
    const-string v3, "dns2"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .local v34, "dns2index":I
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, v32

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v32

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, v32

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v32

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, v32

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v32

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, v32

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v32

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, v32

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v32

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, v32

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v32

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v15, "type"

    move-object/from16 v0, v32

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, v32

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x1

    const/16 v22, -0x1

    if-gez v33, :cond_6

    const/16 v23, 0x0

    :goto_3
    if-gez v34, :cond_7

    const/16 v24, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->classIdOfDefaultType:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->ClassIdToPdnLabel(Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-direct/range {v2 .. v28}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .local v2, "dbEntry":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget v3, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v0, v30

    if-ne v3, v0, :cond_8

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->active:Z

    if-nez v29, :cond_2

    iget-boolean v3, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->active:Z

    if-eqz v3, :cond_9

    :cond_2
    const/16 v29, 0x1

    :goto_6
    const-string v4, "UdbSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load apn ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .end local v2    # "dbEntry":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v29    # "activeApnFound":Z
    .end local v33    # "dns1index":I
    .end local v34    # "dns2index":I
    :catch_0
    move-exception v35

    .local v35, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "UdbSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to load DB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v32, :cond_3

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    const/16 v32, 0x0

    .end local v35    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_8
    return-object v31

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    goto/16 :goto_0

    .restart local v29    # "activeApnFound":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "name ASC"

    move-object/from16 v5, v37

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    goto/16 :goto_1

    .restart local v33    # "dns1index":I
    .restart local v34    # "dns2index":I
    :cond_6
    invoke-interface/range {v32 .. v33}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_4

    .restart local v2    # "dbEntry":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_6

    :cond_a
    const-string v3, "null"

    goto :goto_7

    .end local v2    # "dbEntry":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v33    # "dns1index":I
    .end local v34    # "dns2index":I
    :cond_b
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    const/16 v32, 0x0

    :cond_c
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "UdbSync"

    const-string v4, "UI apnlist is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    if-eqz v32, :cond_3

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    const/16 v32, 0x0

    goto :goto_8

    .end local v29    # "activeApnFound":Z
    :catchall_0
    move-exception v3

    if-eqz v32, :cond_e

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    const/16 v32, 0x0

    :cond_e
    throw v3
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "UdbSync"

    const-string v2, "UserDbSyncUp dispose"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->isUdbSActive:Z

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mIccCard:Lcom/android/internal/telephony/uicc/IccCardProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mIccCard:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mIccCard:Lcom/android/internal/telephony/uicc/IccCardProxy;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbObserver:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbObserver:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNVapns:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_2

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNVapns:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    if-eqz v1, :cond_3

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    if-eqz v1, :cond_4

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->userIntentionOfPdn:[I

    if-eqz v1, :cond_5

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->userIntentionOfPdn:[I

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbObserver:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;

    if-eqz v1, :cond_6

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbObserver:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;

    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    if-eqz v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    :cond_7
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDpt:Lcom/android/internal/telephony/dataconnection/DataProfileTracker;

    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "UdbSync"

    const-string v2, " mDbReloadThread join fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableAllowNVUpdate(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->allowNVupdate:Z

    if-eq v0, p1, :cond_0

    const-string v0, "UdbSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set allowNVupdate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->allowNVupdate:Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->isUdbSActive:Z

    move/from16 v26, v0

    if-nez v26, :cond_1

    const-string v26, "UdbSync"

    const-string v27, "Ignoring handler messages, UserDbSyncUp marked as disposed."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v26, "UdbSync"

    const-string v27, "EVENT_SIM_LOADED"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v15

    .local v15, "mccmnc":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v26

    if-nez v26, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LRA_LTE_CONFIG()Z

    move-result v26

    if-eqz v26, :cond_5

    :cond_2
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->enableAllowNVUpdate(Z)V

    :cond_3
    :goto_1
    if-eqz v15, :cond_4

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update operator "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "(orig="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->bMccMncUpdate:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNVapns:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto/16 :goto_0

    :cond_5
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_3

    const/16 v26, 0x0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    const-string v27, "466"

    invoke-static/range {v26 .. v27}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_6

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->enableAllowNVUpdate(Z)V

    goto/16 :goto_1

    :cond_6
    const/16 v26, 0x0

    goto :goto_2

    .end local v15    # "mccmnc":Ljava/lang/String;
    :pswitch_1
    const-string v26, "UdbSync"

    const-string v27, "EVENT_CACHE_RELOAD"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    .local v5, "activeDb":I
    const/16 v20, -0x1

    .local v20, "updateDb":I
    const/16 v21, 0x0

    .local v21, "updateNvApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v8, 0x0

    .local v8, "createDb":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNVapns:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    aget-object v16, v26, v27

    .local v16, "nvDefaultApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v6, 0x0

    .local v6, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .local v18, "param":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->ordinal()I

    move-result v14

    .local v14, "indexOfRequestedType":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v7

    .local v7, "classIdOfRequestedType":Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "requested by NV update, nvDefaultApn = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_3
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", index of updated item = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", param = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-nez v18, :cond_9

    const-string v26, "null"

    :goto_4
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNVapns:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;->ordinal()I

    move-result v27

    aput-object v18, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->classIdOfDefaultType:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    if-ne v0, v7, :cond_7

    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNVapns:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v27, v0

    aget-object v27, v27, v14

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-boolean v27, v26, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-boolean v27, v26, v14

    goto/16 :goto_0

    :cond_8
    const-string v26, "null"

    goto/16 :goto_3

    :cond_9
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNVapns:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    aget-object v16, v26, v14

    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "requested by NV update, update apn of \"default\" type as "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_5
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " ,mActiveApn="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_f

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v26, v0

    aget-boolean v26, v26, v14

    if-eqz v26, :cond_c

    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NV("

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "): has been updated to"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_6
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " by UI value"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-boolean v27, v26, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->userIntentionOfPdn:[I

    move-object/from16 v26, v0

    aget v26, v26, v14

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    const-string v26, "UdbSync"

    const-string v27, "PDN parameter change from UI during the update process"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->userIntentionOfPdn:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v27, v26, v14

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    const-string v26, "UdbSync"

    const-string v27, "Update the pdn parameter to UI due to NV update"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_d
    const-string v26, "null"

    goto/16 :goto_5

    :cond_e
    const-string v26, "null"

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v26, v0

    aget-boolean v26, v26, v14

    if-nez v26, :cond_1b

    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NV("

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "): has been updated to"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_7
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ". And UI ("

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ") need to update"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aput-boolean v27, v26, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v20, v0

    .end local v7    # "classIdOfRequestedType":Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    .end local v14    # "indexOfRequestedType":I
    .end local v18    # "param":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_10
    :goto_8
    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DB reloaded "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v29, 0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_3d

    const-string v26, "From NV"

    :goto_9
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-nez v26, :cond_3e

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", itm="

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v29

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_a
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ": activeDb="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", updateDb="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", bMccMncUpdate="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->bMccMncUpdate:Z

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", createDb="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", by="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move/from16 v26, v0

    if-eqz v26, :cond_3f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getClassID()Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-result-object v26

    :goto_b
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", nvDefaultApn="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v16, :cond_40

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_c
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "/"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v29, v0

    aget-boolean v28, v28, v29

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "/"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v29, v0

    aget-boolean v28, v28, v29

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " to "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-nez v8, :cond_11

    const/16 v26, -0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_41

    :cond_11
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", mc="

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_d
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->allowNVupdate:Z

    move/from16 v26, v0

    if-nez v26, :cond_42

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDpt:Lcom/android/internal/telephony/dataconnection/DataProfileTracker;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    const/16 v28, 0x1

    aput-boolean v28, v26, v27

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update into NV:("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDpt:Lcom/android/internal/telephony/dataconnection/DataProfileTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->classIdOfDefaultType:Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataProfileTracker;->onUserApnUpdate(Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    :cond_13
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mMccMnc = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    .local v22, "updatedApn":Ljava/lang/String;
    if-eqz v16, :cond_14

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v22, v0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .local v23, "updatedMcc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .local v24, "updatedMnc":Ljava/lang/String;
    :goto_f
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .local v25, "values":Landroid/content/ContentValues;
    if-eqz v8, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->allowNVupdate:Z

    move/from16 v26, v0

    if-eqz v26, :cond_17

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->bMccMncUpdate:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->createDBcount:I

    move/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_45

    const-string v26, "name"

    const-string v27, "Internet"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v22, :cond_15

    const-string v22, "NO_PROFILE"

    :cond_15
    const-string v26, "apn"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "mcc"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "mnc"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "numeric"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "type"

    const-string v27, "default,hipri"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .local v11, "dbUri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->phone_type:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    sget-object v27, Landroid/provider/Telephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    :goto_10
    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Insert into "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_16

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    :cond_16
    :goto_11
    new-instance v25, Landroid/content/ContentValues;

    .end local v25    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .restart local v25    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->createDBcount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->createDBcount:I

    .end local v11    # "dbUri":Landroid/net/Uri;
    :cond_17
    :goto_12
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v5, v0, :cond_19

    const-string v26, "apn_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_1
    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update the prefer apn to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .restart local v11    # "dbUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->phone_type:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->CDMA_PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    :goto_13
    if-eqz v8, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->allowNVupdate:Z

    move/from16 v26, v0

    if-eqz v26, :cond_18

    if-eqz v11, :cond_18

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .local v19, "serviceTypes":[Ljava/lang/String;
    const/16 v26, 0x0

    const-string v27, "default"

    aput-object v27, v19, v26

    new-instance v26, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-direct/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->setServiceType([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->active:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v11    # "dbUri":Landroid/net/Uri;
    .end local v19    # "serviceTypes":[Ljava/lang/String;
    :cond_18
    :goto_14
    new-instance v25, Landroid/content/ContentValues;

    .end local v25    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .restart local v25    # "values":Landroid/content/ContentValues;
    :cond_19
    const/16 v26, -0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->bMccMncUpdate:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->allowNVupdate:Z

    move/from16 v26, v0

    if-nez v26, :cond_47

    const-string v26, "UdbSync"

    const-string v27, "Special requirement no need to update the UI database"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v22    # "updatedApn":Ljava/lang/String;
    .end local v23    # "updatedMcc":Ljava/lang/String;
    .end local v24    # "updatedMnc":Ljava/lang/String;
    .end local v25    # "values":Landroid/content/ContentValues;
    .restart local v7    # "classIdOfRequestedType":Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    .restart local v14    # "indexOfRequestedType":I
    .restart local v18    # "param":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1a
    const-string v26, "null"

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-boolean v27, v26, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aput-boolean v27, v26, v14

    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NV("

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "): has been updated to"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v16, :cond_1c

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_15
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ". And UI ("

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ") need to update"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->userIntentionOfPdn:[I

    move-object/from16 v26, v0

    aget v26, v26, v14

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    const-string v26, "UdbSync"

    const-string v27, "PDN parameter change from UI during the update process"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->userIntentionOfPdn:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v27, v26, v14

    goto/16 :goto_8

    :cond_1c
    const-string v26, "null"

    goto :goto_15

    .end local v7    # "classIdOfRequestedType":Lcom/android/internal/telephony/dataconnection/ApnSetting$ClassId;
    .end local v14    # "indexOfRequestedType":I
    .end local v18    # "param":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1d
    const-string v26, "UdbSync"

    const-string v27, "requested by first bootup or UI update"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    move-object/from16 v26, v0

    if-eqz v26, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbChangeDuringReload:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1e

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbChangeDuringReload:Z

    const-string v26, "UdbSync"

    const-string v28, "defer EVENT_DB_RELOAD(2)"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    const-wide/16 v28, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v27

    goto/16 :goto_0

    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v26

    :cond_1e
    :try_start_3
    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_16
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    :goto_17
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    check-cast v6, Ljava/util/ArrayList;

    .restart local v6    # "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_3c

    const/4 v9, 0x0

    .local v9, "currActiveApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/16 v17, 0x0

    .local v17, "nvMatchedApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_18
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_24

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .local v10, "currApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "currApnInfo = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v10, :cond_21

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_19
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " nvDefaultApn = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v16, :cond_22

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_1a
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1f

    iget-boolean v0, v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;->active:Z

    move/from16 v26, v0

    if-eqz v26, :cond_23

    const-string v26, "UdbSync"

    const-string v27, "find the prefer apn set to currActiveApnInfo"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    :cond_1f
    :goto_1b
    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    .end local v9    # "currActiveApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "currApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v13    # "i":I
    .end local v17    # "nvMatchedApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :catch_0
    move-exception v12

    .local v12, "ex":Ljava/lang/Exception;
    const-string v26, "UdbSync"

    const-string v27, " mDbReloadThread join fail"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_20
    const-string v26, "UdbSync"

    const-string v27, "Warning: mDbReloadThread is null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .restart local v9    # "currActiveApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v10    # "currApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v13    # "i":I
    .restart local v17    # "nvMatchedApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_21
    const-string v26, "null"

    goto :goto_19

    :cond_22
    const-string v26, "null"

    goto :goto_1a

    :cond_23
    if-eqz v16, :cond_1f

    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1f

    const-string v26, "UdbSync"

    const-string v27, "set the currApnInfo to nvMatchedApnInfo"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v10

    goto :goto_1b

    .end local v10    # "currApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->allowNVupdate:Z

    move/from16 v26, v0

    if-eqz v26, :cond_36

    if-eqz v9, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    if-eqz v26, :cond_33

    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mActiveApn = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    if-eqz v26, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_1c
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "currActiveApnInfo = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v9, :cond_27

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_1d
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "nvDefaultApn = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v16, :cond_28

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_1e
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateNvApn = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v21, :cond_29

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_1f
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v26, v0

    iget v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2d

    if-eqz v16, :cond_25

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_2c

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mNvUpdateDbNotConfirmed = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v29, v0

    aget-boolean v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    aget-boolean v26, v26, v27

    if-nez v26, :cond_2b

    move-object/from16 v21, v9

    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "set the updateNvApn = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v21, :cond_2a

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_20
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_21
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto/16 :goto_8

    :cond_26
    const-string v26, "null"

    goto/16 :goto_1c

    :cond_27
    const-string v26, "null"

    goto/16 :goto_1d

    :cond_28
    const-string v26, "null"

    goto/16 :goto_1e

    :cond_29
    const-string v26, "null"

    goto/16 :goto_1f

    :cond_2a
    const-string v26, "null"

    goto :goto_20

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v20, v0

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateDb = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    const/16 v28, 0x0

    aput-boolean v28, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    const/16 v28, 0x0

    aput-boolean v28, v26, v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->bMccMncUpdate:Z

    move/from16 v26, v0

    if-eqz v26, :cond_25

    iget v5, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iget v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v20, v0

    goto :goto_21

    :cond_2d
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_2e

    iget v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v20, v0

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateDb = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_2e
    if-eqz v16, :cond_32

    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_31

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mNvUpdateDbNotConfirmed = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v29, v0

    aget-boolean v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    aget-boolean v26, v26, v27

    if-nez v26, :cond_30

    move-object/from16 v21, v9

    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "set the updateNvApn = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v21, :cond_2f

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_22
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_2f
    const-string v26, "null"

    goto :goto_22

    :cond_30
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v20, v0

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateDb = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mNvUpdateDbNotConfirmed:[Z

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    const/16 v28, 0x0

    aput-boolean v28, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    const/16 v28, 0x0

    aput-boolean v28, v26, v27

    goto/16 :goto_21

    :cond_32
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v20, v0

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateDb = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_33
    const-string v26, "UdbSync"

    const-string v27, "first load - after bootup"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "set activeDb & updateDb = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iget v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v20, v0

    goto/16 :goto_21

    :cond_34
    const-string v26, "UdbSync"

    const-string v27, "no active one in DB - change SIM"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    if-nez v26, :cond_35

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    :cond_35
    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "set activeDb & updateDb = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    goto/16 :goto_8

    :cond_36
    if-eqz v9, :cond_37

    const-string v26, "default"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_37

    move-object/from16 v21, v9

    goto/16 :goto_8

    :cond_37
    if-eqz v17, :cond_38

    move-object/from16 v21, v17

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    goto/16 :goto_8

    :cond_38
    const/4 v13, 0x0

    :goto_23
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_10

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .restart local v10    # "currApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v27, "UdbSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "currApnInfo = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v10, :cond_39

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_24
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " nvDefaultApn = "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v16, :cond_3a

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_25
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_3b

    const-string v26, "default"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3b

    move-object/from16 v21, v10

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "sim loaded, scan for apn support default apn type:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_39
    const-string v26, "null"

    goto :goto_24

    :cond_3a
    const-string v26, "null"

    goto :goto_25

    :cond_3b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_23

    .end local v9    # "currActiveApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "currApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v13    # "i":I
    .end local v17    # "nvMatchedApnInfo":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3c
    const-string v26, "UdbSync"

    const-string v27, " no suitable entry in DB - change SIM"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto/16 :goto_8

    :cond_3d
    const-string v26, "From UI"

    goto/16 :goto_9

    :cond_3e
    const-string v26, ""

    goto/16 :goto_a

    :cond_3f
    const-string v26, ""

    goto/16 :goto_b

    :cond_40
    const-string v26, "null"

    goto/16 :goto_c

    :cond_41
    const-string v26, ""

    goto/16 :goto_d

    :cond_42
    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbUpdateNvNotConfirmed:[Z

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_13

    const-string v26, "UdbSync"

    const-string v27, "Need update apn from UI to NV during the update process"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->userIntentionOfPdn:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->indexOfDefaultType:I

    move/from16 v27, v0

    const/16 v28, 0x1

    aput v28, v26, v27

    goto/16 :goto_e

    .restart local v22    # "updatedApn":Ljava/lang/String;
    .restart local v23    # "updatedMcc":Ljava/lang/String;
    :cond_43
    const-string v24, ""

    goto/16 :goto_f

    .restart local v11    # "dbUri":Landroid/net/Uri;
    .restart local v24    # "updatedMnc":Ljava/lang/String;
    .restart local v25    # "values":Landroid/content/ContentValues;
    :cond_44
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    sget-object v27, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v11

    goto/16 :goto_10

    .end local v11    # "dbUri":Landroid/net/Uri;
    :cond_45
    const-string v26, "UdbSync"

    const-string v27, "Maxima create APN count no more create APN"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .restart local v11    # "dbUri":Landroid/net/Uri;
    :cond_46
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v11

    goto/16 :goto_13

    .end local v11    # "dbUri":Landroid/net/Uri;
    :cond_47
    if-eqz v22, :cond_48

    const-string v26, "apn"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    const-string v26, "mcc"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "mnc"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "numeric"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mMccMnc:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .restart local v11    # "dbUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->phone_type:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_49

    sget-object v26, Landroid/provider/Telephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    invoke-static/range {v26 .. v28}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    :goto_26
    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update UI APN into "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    goto/16 :goto_0

    :cond_49
    sget-object v26, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    invoke-static/range {v26 .. v28}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto :goto_26

    .end local v5    # "activeDb":I
    .end local v6    # "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .end local v8    # "createDb":Z
    .end local v11    # "dbUri":Landroid/net/Uri;
    .end local v16    # "nvDefaultApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v20    # "updateDb":I
    .end local v21    # "updateNvApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v22    # "updatedApn":Ljava/lang/String;
    .end local v23    # "updatedMcc":Ljava/lang/String;
    .end local v24    # "updatedMnc":Ljava/lang/String;
    .end local v25    # "values":Landroid/content/ContentValues;
    :pswitch_2
    const-string v26, "UdbSync"

    const-string v27, "EVENT_UPDATE_FROM_NV"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_3
    const-string v26, "UdbSync"

    const-string v27, "EVENT_DB_RELOAD"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->isAlive()Z

    move-result v26

    if-nez v26, :cond_4b

    :cond_4a
    :try_start_7
    new-instance v26, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;

    const-string v27, "ApnSetting Db reload thread"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$1;-><init>(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v12

    .restart local v12    # "ex":Ljava/lang/Exception;
    const-string v26, "UdbSync"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "EVENT_DB_RELOAD: exception: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbReloadThread:Ljava/lang/Thread;

    move-object/from16 v27, v0

    monitor-enter v27

    const/16 v26, 0x1

    :try_start_8
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->mDbChangeDuringReload:Z

    monitor-exit v27
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-string v26, "UdbSync"

    const-string v27, "defer EVENT_DB_RELOAD"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v26

    :try_start_9
    monitor-exit v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v26

    .restart local v5    # "activeDb":I
    .restart local v6    # "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .restart local v8    # "createDb":Z
    .restart local v16    # "nvDefaultApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v20    # "updateDb":I
    .restart local v21    # "updateNvApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v22    # "updatedApn":Ljava/lang/String;
    .restart local v23    # "updatedMcc":Ljava/lang/String;
    .restart local v24    # "updatedMnc":Ljava/lang/String;
    .restart local v25    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v26

    goto/16 :goto_14

    .restart local v11    # "dbUri":Landroid/net/Uri;
    :catch_3
    move-exception v26

    goto/16 :goto_11

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public nvApnUpdate(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 4
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v3, 0x0

    const-string v1, "UdbSync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update from NV:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "(null)"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3, v3, p1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public simLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "UdbSync"

    const-string v1, "Send EVENT_SIM_LOADED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->createDBcount:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->sendEmptyMessage(I)Z

    return-void
.end method
