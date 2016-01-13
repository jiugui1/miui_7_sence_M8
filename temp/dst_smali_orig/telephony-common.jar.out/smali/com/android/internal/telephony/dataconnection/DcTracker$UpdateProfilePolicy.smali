.class Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateProfilePolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;
    }
.end annotation


# static fields
.field public static final FUNCTION_APN_CHANGED:I = 0x2

.field public static final FUNCTION_SIM_LOADED:I = 0x1


# instance fields
.field public mActionTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPDNInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSlotArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Action format error"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    new-array v7, v11, [Ljava/lang/String;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->values()[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    move-result-object v7

    array-length v7, v7

    new-array v6, v7, [Ljava/lang/String;

    .local v6, "temp":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->values()[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_6

    const-string v7, "0"

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v6    # "temp":[Ljava/lang/String;
    :cond_0
    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    const-string v7, ";"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "aList":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v7, v0

    if-ge v4, v7, :cond_7

    aget-object v1, v0, v4

    .local v1, "aSubStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "A format error: i="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "bList":[Ljava/lang/String;
    array-length v7, v2

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->values()[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    move-result-object v8

    array-length v8, v8

    if-eq v7, v8, :cond_3

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "B format error: length incorrect, aSubStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    array-length v7, v2

    if-ge v5, v7, :cond_5

    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_4

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "B format error: wrong value, aSubStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "aList":[Ljava/lang/String;
    .end local v1    # "aSubStr":Ljava/lang/String;
    .end local v2    # "bList":[Ljava/lang/String;
    .end local v5    # "j":I
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "temp":[Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "DCT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpdateProfilePolicy: parse fail, slot="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "temp":[Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;

    const/16 v10, 0xe

    const-string v11, "lte"

    invoke-direct {v9, p0, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;

    const/16 v10, 0xd

    const-string v11, "eHRPD"

    invoke-direct {v9, p0, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public UpdateProfilePolicyCheck(III)Z
    .locals 8
    .param p1, "slot"    # I
    .param p2, "rat"    # I
    .param p3, "function"    # I

    .prologue
    const/4 v0, 0x1

    .local v0, "bUpdateProfile":Z
    const-string v4, "Update profile"

    .local v4, "reason":Ljava/lang/String;
    add-int/lit8 v2, p1, -0xa

    .local v2, "i":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    if-gez v2, :cond_5

    :cond_0
    const/4 v0, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "mSlotArray is null"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    const-string v5, "mActionTypeList is null"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-gez v2, :cond_4

    const-string v5, "Wrong slot"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_3
    const-string v5, "DCT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UpdateProfilePolicyCheck: slot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " function="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bUpdateProfile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const-string v5, ""

    goto :goto_0

    :cond_3
    const-string v5, ""

    goto :goto_1

    :cond_4
    const-string v5, ""

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t contain this slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    const/4 v3, 0x0

    .local v3, "mAction":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v2, v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mAction":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .restart local v3    # "mAction":[Ljava/lang/String;
    :goto_4
    if-nez v3, :cond_7

    const/4 v0, 0x0

    const-string v4, "Action list is null"

    :cond_7
    if-eqz v0, :cond_8

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ACTION_TYPE_RADIO_TECH:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ordinal()I

    move-result v5

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p2

    if-eq v5, p2, :cond_8

    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t contain this rat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8
    if-eqz v0, :cond_1

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ACTION_TYPE_FUNCTION:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ordinal()I

    move-result v5

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p3

    if-eq v5, p3, :cond_1

    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t contain this function = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mAction":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "mAction":[Ljava/lang/String;
    goto :goto_4

    .end local v3    # "mAction":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check failed, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    const/4 v3, 0x0

    .local v3, "s":[Ljava/lang/String;
    const-string v4, "[mSlotArray="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mActionTypeList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
