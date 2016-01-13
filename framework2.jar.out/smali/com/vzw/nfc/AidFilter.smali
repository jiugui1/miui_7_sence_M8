.class public final Lcom/vzw/nfc/AidFilter;
.super Ljava/lang/Object;
.source "AidFilter.java"


# static fields
.field private static mNfcAdapter:Landroid/nfc/INfcAdapter;


# instance fields
.field public final DEFAULT_ROUTE_LOCATION:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/vzw/nfc/AidFilter;->DEFAULT_ROUTE_LOCATION:I

    return-void
.end method

.method private getAid(Lcom/vzw/nfc/dos/AidRangeDo;Lcom/vzw/nfc/dos/AidMaskDo;)[B
    .locals 6
    .param p1, "aid_range"    # Lcom/vzw/nfc/dos/AidRangeDo;
    .param p2, "aid_mask"    # Lcom/vzw/nfc/dos/AidMaskDo;

    .prologue
    const/4 v5, 0x0

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "aid":[B
    invoke-virtual {p2}, Lcom/vzw/nfc/dos/AidMaskDo;->getAidMask()[B

    move-result-object v1

    .line 144
    .local v1, "barr_aid_mask":[B
    const/4 v2, 0x0

    .line 146
    .local v2, "count":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 147
    aget-byte v3, v1, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 153
    :cond_0
    if-eqz v2, :cond_1

    .line 154
    new-array v0, v2, [B

    .line 155
    invoke-virtual {p1}, Lcom/vzw/nfc/dos/AidRangeDo;->getAidRange()[B

    move-result-object v3

    invoke-static {v3, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :cond_1
    return-object v0

    .line 150
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getPowerState(Lcom/vzw/nfc/dos/FilterEntryDo;)I
    .locals 8
    .param p1, "filter_entry_do"    # Lcom/vzw/nfc/dos/FilterEntryDo;

    .prologue
    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, "powerState":I
    invoke-virtual {p1}, Lcom/vzw/nfc/dos/FilterEntryDo;->getRoutingModeDo()Lcom/vzw/nfc/dos/RoutingModeDo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vzw/nfc/dos/RoutingModeDo;->getRoutingInfo()B

    move-result v4

    .line 163
    .local v4, "routeInfo":I
    invoke-virtual {p1}, Lcom/vzw/nfc/dos/FilterEntryDo;->getFilterConditionTagDo()Lcom/vzw/nfc/dos/FilterConditionTagDo;

    move-result-object v0

    .line 165
    .local v0, "conditionTagDo":Lcom/vzw/nfc/dos/FilterConditionTagDo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getFilterConditionTag()B

    move-result v5

    const/16 v6, -0xf

    if-ne v5, v6, :cond_1

    .line 170
    const/4 v3, 0x1

    .line 190
    :cond_0
    :goto_0
    const-string v5, "AidFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPowerState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v3

    .line 171
    :cond_1
    if-eqz v4, :cond_0

    .line 172
    const/4 v1, 0x1

    .line 174
    .local v1, "driverOption":I
    :try_start_0
    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getHtcDriverOption()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 183
    :goto_1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 184
    or-int/lit16 v3, v4, 0xc0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "AidFilter"

    const-string v6, "getPowerState: Exception caught."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 187
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    and-int/lit8 v5, v4, 0x2

    or-int/lit8 v5, v5, 0x4

    and-int/lit8 v6, v4, 0x4

    shr-int/lit8 v6, v6, 0x2

    or-int v3, v5, v6

    goto :goto_0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .prologue
    .line 197
    sget-object v1, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    .line 208
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 202
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 203
    .restart local v0    # "b":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 204
    const/4 v1, 0x0

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    .line 208
    sget-object v1, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    goto :goto_0
.end method

.method private prepareRouteInfo(Lcom/vzw/nfc/dos/ClfFilterDoList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "all_CLF_FILTER_DO"    # Lcom/vzw/nfc/dos/ClfFilterDoList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vzw/nfc/dos/ClfFilterDoList;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/nfc/RouteEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/nfc/RouteEntry;>;"
    invoke-virtual {p1}, Lcom/vzw/nfc/dos/ClfFilterDoList;->getClfFilterDos()Ljava/util/ArrayList;

    move-result-object v2

    .line 126
    .local v2, "clf_FILTER_DOs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/nfc/dos/ClfFilterDo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/nfc/dos/ClfFilterDo;

    .line 128
    .local v1, "clf_FILTER_DO":Lcom/vzw/nfc/dos/ClfFilterDo;
    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vzw/nfc/dos/FilterEntryDo;->getAidRangeDo()Lcom/vzw/nfc/dos/AidRangeDo;

    move-result-object v6

    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/nfc/dos/FilterEntryDo;->getAidMaskDo()Lcom/vzw/nfc/dos/AidMaskDo;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vzw/nfc/AidFilter;->getAid(Lcom/vzw/nfc/dos/AidRangeDo;Lcom/vzw/nfc/dos/AidMaskDo;)[B

    move-result-object v0

    .line 132
    .local v0, "aid":[B
    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vzw/nfc/AidFilter;->getPowerState(Lcom/vzw/nfc/dos/FilterEntryDo;)I

    move-result v5

    .line 133
    .local v5, "powerState":I
    const-string v6, "AidFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prepareRouteInfo powerState "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v3, Lcom/vzw/nfc/RouteEntry;

    const/4 v6, 0x2

    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/nfc/dos/FilterEntryDo;->getVzwArDo()Lcom/vzw/nfc/dos/VzwPermissionDo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/nfc/dos/VzwPermissionDo;->isVzwAllowed()Z

    move-result v7

    invoke-direct {v3, v0, v5, v6, v7}, Lcom/vzw/nfc/RouteEntry;-><init>([BIIZ)V

    .line 137
    .local v3, "entry":Lcom/vzw/nfc/RouteEntry;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v0    # "aid":[B
    .end local v1    # "clf_FILTER_DO":Lcom/vzw/nfc/dos/ClfFilterDo;
    .end local v3    # "entry":Lcom/vzw/nfc/RouteEntry;
    .end local v5    # "powerState":I
    :cond_0
    return-void
.end method


# virtual methods
.method public disableFilterCondition(B)Z
    .locals 6
    .param p1, "filterConditionTag"    # B

    .prologue
    .line 105
    const/4 v2, 0x1

    .line 106
    .local v2, "status":Z
    const/16 v4, -0xf

    if-ne v4, p1, :cond_0

    .line 107
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-gt v1, v4, :cond_0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/nfc/INfcAdapter;->setScreenOffCondition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 118
    .end local v1    # "i":I
    .end local v2    # "status":Z
    .local v3, "status":Z
    :goto_1
    return v3

    .line 111
    .end local v3    # "status":Z
    .restart local v1    # "i":I
    .restart local v2    # "status":Z
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "AidFilter"

    const-string v5, "disableFilterCondition - failed to call setScreenOffCondition"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v4, 0x0

    sput-object v4, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    .line 114
    const/4 v2, 0x0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    :cond_0
    move v3, v2

    .line 118
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto :goto_1
.end method

.method public enableFilterCondition(B)Z
    .locals 6
    .param p1, "filterConditionTag"    # B

    .prologue
    .line 84
    const/4 v2, 0x1

    .line 85
    .local v2, "status":Z
    const/16 v4, -0xf

    if-ne v4, p1, :cond_0

    .line 86
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-gt v1, v4, :cond_0

    .line 88
    :try_start_0
    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/nfc/INfcAdapter;->setScreenOffCondition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 97
    .end local v1    # "i":I
    .end local v2    # "status":Z
    .local v3, "status":Z
    :goto_1
    return v3

    .line 90
    .end local v3    # "status":Z
    .restart local v1    # "i":I
    .restart local v2    # "status":Z
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "AidFilter"

    const-string v5, "enableFilterCondition - failed to call setScreenOffCondition"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v4, 0x0

    sput-object v4, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    .line 93
    const/4 v2, 0x0

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    :cond_0
    move v3, v2

    .line 97
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto :goto_1
.end method

.method public setFilterList([B)Z
    .locals 8
    .param p1, "filterList"    # [B

    .prologue
    const/4 v5, 0x0

    .line 47
    const/4 v4, 0x1

    .line 48
    .local v4, "status":Z
    new-instance v0, Lcom/vzw/nfc/dos/ClfFilterDoList;

    array-length v6, p1

    invoke-direct {v0, p1, v5, v6}, Lcom/vzw/nfc/dos/ClfFilterDoList;-><init>([BII)V

    .line 51
    .local v0, "all_CLF_FILTER_DO":Lcom/vzw/nfc/dos/ClfFilterDoList;
    :try_start_0
    invoke-virtual {v0}, Lcom/vzw/nfc/dos/ClfFilterDoList;->translate()V
    :try_end_0
    .catch Lcom/vzw/nfc/dos/DoParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/nfc/RouteEntry;>;"
    invoke-direct {p0, v0, v2}, Lcom/vzw/nfc/AidFilter;->prepareRouteInfo(Lcom/vzw/nfc/dos/ClfFilterDoList;Ljava/util/ArrayList;)V

    .line 60
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/4 v5, 0x3

    if-gt v3, v5, :cond_0

    .line 63
    :try_start_1
    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/vzw/nfc/RouteEntry;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/vzw/nfc/RouteEntry;

    invoke-interface {v6, v5}, Landroid/nfc/INfcAdapter;->setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    move v5, v4

    .line 73
    .end local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/nfc/RouteEntry;>;"
    .end local v3    # "i":I
    :goto_1
    return v5

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lcom/vzw/nfc/dos/DoParserException;
    invoke-virtual {v1}, Lcom/vzw/nfc/dos/DoParserException;->printStackTrace()V

    .line 54
    const-string v6, "AidFilter"

    const-string v7, "setFilterList - failed to translate"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    .end local v1    # "e":Lcom/vzw/nfc/dos/DoParserException;
    .restart local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/nfc/RouteEntry;>;"
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    .line 67
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "AidFilter"

    const-string v6, "setFilterList - failed to call setVzwAidList"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v5, 0x0

    sput-object v5, Lcom/vzw/nfc/AidFilter;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    .line 69
    const/4 v4, 0x0

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    move v5, v4

    .line 73
    goto :goto_1
.end method
