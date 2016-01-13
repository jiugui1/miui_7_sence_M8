.class public Lcom/htc/dialog/HtcAlertController;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertController$AlertParams;,
        Lcom/htc/dialog/HtcAlertController$ButtonHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAlertController@Tie"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mAutoLinkMask:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDisabled:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDisabled:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDisabled:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckBoxCheckBox:Landroid/view/View;

.field private mCheckBoxDefault:Z

.field private mCheckBoxEnabled:Z

.field private mCheckBoxLabel:Ljava/lang/CharSequence;

.field private mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckBoxPanel:Landroid/view/View;

.field private mCheckBoxTextView:Landroid/widget/TextView;

.field private mCheckPanelLayout:I

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsAutoMotive:Z

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mPadding1:Landroid/view/View;

.field private mPadding3:Landroid/view/View;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v2, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    .line 124
    iput v1, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    .line 142
    iput v1, p0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    .line 163
    iput v2, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    .line 169
    iput-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    .line 170
    iput-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    .line 183
    new-instance v0, Lcom/htc/dialog/HtcAlertController$1;

    invoke-direct {v0, p0}, Lcom/htc/dialog/HtcAlertController$1;-><init>(Lcom/htc/dialog/HtcAlertController;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 245
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 247
    iput-object p3, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    .line 248
    new-instance v0, Lcom/htc/dialog/HtcAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/htc/dialog/HtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    .line 251
    const v0, 0x209000c

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mAlertDialogLayout:I

    .line 252
    const v0, 0x2090066

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mListLayout:I

    .line 253
    const v0, 0x209001f

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mMultiChoiceItemLayout:I

    .line 254
    const v0, 0x2090021

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mSingleChoiceItemLayout:I

    .line 255
    const v0, 0x209001d

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mListItemLayout:I

    .line 256
    const v0, 0x209001b

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckPanelLayout:I

    .line 257
    return-void
.end method

.method private HtcIconButton_useSelectorWhenPressed(ZLandroid/widget/Button;)V
    .locals 7
    .param p1, "flag"    # Z
    .param p2, "btn"    # Landroid/widget/Button;

    .prologue
    .line 1817
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1818
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-string v3, "useSelectorWhenPressed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1819
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1827
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1820
    :catch_0
    move-exception v1

    .line 1821
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcIconButton_useSelectorWhenPressed: btn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1822
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1823
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcIconButton_useSelectorWhenPressed: btn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1824
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 1825
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcIconButton_useSelectorWhenPressed: btn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private HtcResUtil_isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 1737
    :try_start_0
    const-string v5, "com.htc.util.res.HtcResUtil"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1738
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "isInAllCapsLocale"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1739
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1740
    .local v3, "result":Ljava/lang/Object;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    .line 1750
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 1741
    :catch_0
    move-exception v1

    .line 1742
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcResUtil_isInAllCapsLocale: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1743
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1744
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcResUtil_isInAllCapsLocale: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1745
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 1746
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcResUtil_isInAllCapsLocale: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1747
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 1748
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcResUtil_isInAllCapsLocale: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/dialog/HtcAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/dialog/HtcAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/dialog/HtcAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/dialog/HtcAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/htc/dialog/HtcAlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1702(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/dialog/HtcAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/dialog/HtcAlertController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/htc/dialog/HtcAlertController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    return-object v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    :goto_0
    return v2

    .line 270
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 271
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 274
    check-cast v1, Landroid/view/ViewGroup;

    .line 275
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 276
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 277
    add-int/lit8 v0, v0, -0x1

    .line 278
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 279
    invoke-static {p0}, Lcom/htc/dialog/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 284
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 8
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v7, 0x0

    .line 993
    const/4 v4, 0x0

    .line 995
    .local v4, "weight":F
    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const/high16 v6, 0x2020000

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 996
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 998
    .local v1, "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 999
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    .end local v1    # "paramsL":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x2020001

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1004
    .local v3, "rightSpacer":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1005
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1006
    .local v2, "paramsR":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1007
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    .end local v2    # "paramsR":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private mCheckBoxCheckBox_isChecked()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1801
    :try_start_0
    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1802
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-string v5, "isChecked"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1803
    .local v2, "m":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1804
    .local v3, "result":Ljava/lang/Object;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 1812
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 1805
    :catch_0
    move-exception v1

    .line 1806
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCheckBoxCheckBox_isChecked: mCheckBoxCheckBox="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1807
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1808
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCheckBoxCheckBox_isChecked: mCheckBoxCheckBox="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1809
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 1810
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCheckBoxCheckBox_isChecked: mCheckBoxCheckBox="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mCheckBoxCheckBox_setChecked(Z)V
    .locals 7
    .param p1, "checked"    # Z

    .prologue
    .line 1755
    :try_start_0
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1756
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-string v3, "setChecked"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1757
    .local v2, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1765
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1758
    :catch_0
    move-exception v1

    .line 1759
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setChecked: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1760
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1761
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setChecked: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1762
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 1763
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setChecked: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mCheckBoxCheckBox_setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 1771
    :try_start_0
    const-string v3, "com.htc.app.HtcAlertController"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1772
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setOnCheckedChangeListener"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1773
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1783
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1774
    :catch_0
    move-exception v1

    .line 1775
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setOnCheckedChangeListener: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1776
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1777
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setOnCheckedChangeListener: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1778
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 1779
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setOnCheckedChangeListener: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1780
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 1781
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setOnCheckedChangeListener: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mCheckBoxCheckBox_toggle()V
    .locals 6

    .prologue
    .line 1787
    :try_start_0
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1788
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-string v3, "toggle"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1789
    .local v2, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1797
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1790
    :catch_0
    move-exception v1

    .line 1791
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_toggle: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1792
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1793
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_toggle: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1794
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 1795
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_toggle: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 26
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .param p2, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "hasButtons"    # Z
    .param p5, "a"    # Landroid/content/res/TypedArray;
    .param p6, "hasTitle"    # Z
    .param p7, "buttonPanel"    # Landroid/view/View;

    .prologue
    .line 1018
    const/16 v23, 0x0

    const v24, 0x208005b

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 1019
    .local v12, "fullDark":I
    const/16 v23, 0x1

    const v24, 0x208005d

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    .line 1020
    .local v20, "topDark":I
    const/16 v23, 0x2

    const v24, 0x2080058

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 1021
    .local v10, "centerDark":I
    const/16 v23, 0x3

    const v24, 0x2080050

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1022
    .local v5, "bottomDark":I
    const/16 v23, 0x4

    const v24, 0x208005a

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 1023
    .local v11, "fullBright":I
    const/16 v23, 0x5

    const v24, 0x208005c

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 1024
    .local v19, "topBright":I
    const/16 v23, 0x6

    const v24, 0x2080057

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 1025
    .local v9, "centerBright":I
    const/16 v23, 0x7

    const v24, 0x2080046

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1026
    .local v4, "bottomBright":I
    const/16 v23, 0x8

    const v24, 0x2080052

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1028
    .local v6, "bottomMedium":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1030
    const v6, 0x2080014

    .line 1031
    const v5, 0x2080013

    .line 1032
    const v20, 0x2080016

    .line 1033
    const v10, 0x2080015

    .line 1037
    :cond_0
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v7, v0, [I

    const/16 v23, 0x0

    const v24, 0x2010047

    aput v24, v7, v23

    .line 1038
    .local v7, "categoryAttr":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1039
    .local v3, "b":Landroid/content/res/TypedArray;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 1040
    .local v8, "categoryColor":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1043
    const-string v23, "HtcAlertController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "setBackground: fullDark="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " topDark="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " centerDark="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bottomDark="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " fullBright="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " topBright="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " centerBright="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bottomBright="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bottomMedium="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mForceInverseBackground="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mIsAutoMotive="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " hasTitle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " hasButtons="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " categoryColor="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v22, v0

    .line 1071
    .local v22, "views":[Landroid/view/View;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v15, v0, [Z

    .line 1072
    .local v15, "light":[Z
    const/4 v14, 0x0

    .line 1073
    .local v14, "lastView":Landroid/view/View;
    const/4 v13, 0x0

    .line 1075
    .local v13, "lastLight":Z
    const/16 v16, 0x0

    .line 1076
    .local v16, "pos":I
    if-eqz p6, :cond_1

    .line 1077
    aput-object p1, v22, v16

    .line 1078
    const/16 v23, 0x0

    aput-boolean v23, v15, v16

    .line 1079
    add-int/lit8 v16, v16, 0x1

    .line 1087
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 p2, 0x0

    .end local p2    # "contentPanel":Landroid/widget/LinearLayout;
    :cond_2
    aput-object p2, v22, v16

    .line 1091
    const/16 v23, 0x1

    aput-boolean v23, v15, v16

    .line 1093
    add-int/lit8 v16, v16, 0x1

    .line 1094
    if-eqz p3, :cond_3

    .line 1095
    aput-object p3, v22, v16

    .line 1096
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v23, v0

    aput-boolean v23, v15, v16

    .line 1097
    add-int/lit8 v16, v16, 0x1

    .line 1099
    :cond_3
    if-nez p4, :cond_4

    if-eqz p6, :cond_5

    .line 1100
    :cond_4
    aput-object p7, v22, v16

    .line 1101
    const/16 v23, 0x0

    aput-boolean v23, v15, v16

    .line 1104
    :cond_5
    const/16 v17, 0x0

    .line 1105
    .local v17, "setView":Z
    const/16 v16, 0x0

    :goto_0
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 1106
    aget-object v21, v22, v16

    .line 1107
    .local v21, "v":Landroid/view/View;
    if-nez v21, :cond_6

    .line 1105
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1110
    :cond_6
    if-eqz v14, :cond_8

    .line 1111
    if-nez v17, :cond_a

    .line 1112
    if-eqz v13, :cond_9

    move/from16 v23, v19

    :goto_2
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1113
    if-eqz p6, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 1114
    invoke-virtual {v14}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1115
    .local v18, "topBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1116
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1121
    .end local v18    # "topBackground":Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_3
    const/16 v17, 0x1

    .line 1123
    :cond_8
    move-object/from16 v14, v21

    .line 1124
    aget-boolean v13, v15, v16

    goto :goto_1

    :cond_9
    move/from16 v23, v20

    .line 1112
    goto :goto_2

    .line 1119
    :cond_a
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v23, v0

    if-nez v23, :cond_b

    move/from16 v23, v9

    :goto_4
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_b
    move/from16 v23, v10

    goto :goto_4

    .line 1127
    .end local v21    # "v":Landroid/view/View;
    :cond_c
    if-eqz v14, :cond_d

    .line 1128
    if-eqz v17, :cond_12

    .line 1133
    if-eqz p4, :cond_10

    .end local v6    # "bottomMedium":I
    :goto_5
    invoke-virtual {v14, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1135
    invoke-virtual {v14}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p4

    invoke-direct {v0, v1, v14, v2}, Lcom/htc/dialog/HtcAlertController;->setupButtonsHeight(Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    .line 1166
    .end local v11    # "fullBright":I
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setSelection(I)V

    .line 1174
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v24, v0

    if-nez v24, :cond_14

    .end local v9    # "centerBright":I
    :goto_7
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1177
    :cond_f
    return-void

    .line 1133
    .restart local v6    # "bottomMedium":I
    .restart local v9    # "centerBright":I
    .restart local v11    # "fullBright":I
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    move v6, v5

    goto/16 :goto_5

    :cond_11
    move v6, v4

    goto/16 :goto_5

    .line 1137
    :cond_12
    if-eqz v13, :cond_13

    .end local v11    # "fullBright":I
    :goto_8
    invoke-virtual {v14, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .restart local v11    # "fullBright":I
    :cond_13
    move v11, v12

    goto :goto_8

    .end local v6    # "bottomMedium":I
    .end local v11    # "fullBright":I
    :cond_14
    move v9, v10

    .line 1175
    goto :goto_7
.end method

.method private setupButtonTextLayout()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1195
    const/4 v8, 0x3

    new-array v2, v8, [Landroid/widget/Button;

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    aput-object v8, v2, v10

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    aput-object v8, v2, v9

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    aput-object v8, v2, v11

    .line 1196
    .local v2, "buttons":[Landroid/widget/Button;
    move-object v0, v2

    .local v0, "arr$":[Landroid/widget/Button;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v1, v0, v5

    .line 1197
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1198
    .local v7, "text":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1196
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1202
    :cond_0
    const/4 v3, 0x0

    .line 1204
    .local v3, "containsSpace":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 1205
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1206
    const/4 v3, 0x1

    .line 1213
    :cond_1
    if-eqz v3, :cond_3

    .line 1215
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1216
    invoke-virtual {v1, v11}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1217
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 1204
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1220
    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1221
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1222
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1223
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_1

    .line 1226
    .end local v1    # "button":Landroid/widget/Button;
    .end local v3    # "containsSpace":Z
    .end local v4    # "i":I
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_4
    return-void
.end method

.method private setupButtons()Z
    .locals 13

    .prologue
    .line 860
    const/4 v2, 0x1

    .line 861
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 862
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 863
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v10, 0x0

    .line 864
    .local v10, "whichButtons":I
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x202006a

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 865
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 868
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 875
    :goto_0
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020066

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 876
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 879
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 887
    :goto_1
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020068

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 888
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 891
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 900
    :goto_2
    iget-boolean v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveDisabled:Z

    if-eqz v11, :cond_0

    .line 901
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 903
    :cond_0
    iget-boolean v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeDisabled:Z

    if-eqz v11, :cond_1

    .line 904
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 906
    :cond_1
    iget-boolean v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralDisabled:Z

    if-eqz v11, :cond_2

    .line 907
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 915
    :cond_2
    if-ne v10, v2, :cond_9

    .line 916
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v11}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    .line 923
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    .line 924
    .local v4, "context":Landroid/content/Context;
    if-eqz v4, :cond_5

    .line 925
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020067

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    .line 926
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020069

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    .line 929
    iget-boolean v11, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v11, :cond_4

    .line 932
    const v3, 0x2030134

    .line 933
    .local v3, "button_font_style":I
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v11, v4, v3}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 934
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v11, v4, v3}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 935
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v11, v4, v3}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 937
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const v12, 0x2080041

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 938
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    const v12, 0x2080041

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 942
    .end local v3    # "button_font_style":I
    :cond_4
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 943
    .local v9, "res":Landroid/content/res/Resources;
    const v11, 0x20501ba

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x2050001

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    sub-int v5, v11, v12

    .line 944
    .local v5, "dividerHeight":I
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 945
    .local v6, "dividerWidth":I
    const/4 v8, 0x0

    .line 946
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    .line 947
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 949
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 950
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 951
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    .end local v5    # "dividerHeight":I
    .end local v6    # "dividerWidth":I
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_5
    :goto_4
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v11, v12}, Lcom/htc/dialog/HtcAlertController;->HtcIconButton_useSelectorWhenPressed(ZLandroid/widget/Button;)V

    .line 980
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v11, v12}, Lcom/htc/dialog/HtcAlertController;->HtcIconButton_useSelectorWhenPressed(ZLandroid/widget/Button;)V

    .line 981
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v11, v12}, Lcom/htc/dialog/HtcAlertController;->HtcIconButton_useSelectorWhenPressed(ZLandroid/widget/Button;)V

    .line 983
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->setupButtonTextLayout()V

    .line 984
    invoke-direct {p0, v4}, Lcom/htc/dialog/HtcAlertController;->HtcResUtil_isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v7

    .line 985
    .local v7, "enableAllCaps":Z
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 986
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 987
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 988
    if-eqz v10, :cond_e

    const/4 v11, 0x1

    :goto_5
    return v11

    .line 870
    .end local v4    # "context":Landroid/content/Context;
    .end local v7    # "enableAllCaps":Z
    :cond_6
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 872
    or-int/2addr v10, v2

    goto/16 :goto_0

    .line 881
    :cond_7
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 884
    or-int/2addr v10, v0

    goto/16 :goto_1

    .line 893
    :cond_8
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 896
    or-int/2addr v10, v1

    goto/16 :goto_2

    .line 917
    :cond_9
    if-ne v10, v0, :cond_a

    .line 918
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v11}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 919
    :cond_a
    if-ne v10, v1, :cond_3

    .line 920
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v11}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 952
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "dividerHeight":I
    .restart local v6    # "dividerWidth":I
    .restart local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_b
    const/4 v11, 0x5

    if-ne v10, v11, :cond_c

    .line 953
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 954
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 955
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 956
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 957
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 958
    :cond_c
    const/4 v11, 0x6

    if-ne v10, v11, :cond_d

    .line 959
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 960
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 961
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 962
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 963
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 964
    :cond_d
    const/4 v11, 0x7

    if-ne v10, v11, :cond_5

    .line 965
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 966
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 968
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 969
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 970
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 972
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 973
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 974
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 988
    .end local v5    # "dividerHeight":I
    .end local v6    # "dividerWidth":I
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "res":Landroid/content/res/Resources;
    .restart local v7    # "enableAllCaps":Z
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_5
.end method

.method private setupButtonsHeight(Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "hasButtons"    # Z

    .prologue
    .line 1230
    if-nez p3, :cond_0

    .line 1231
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1232
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1233
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1235
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 17
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    .line 738
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020061    # 9.551E-38f

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 742
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020062

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    .line 743
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v13, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    invoke-static {v13, v14}, Lcom/htc/dialog/HtcAlertDialog;->getDefaultListItemHeight(Landroid/content/Context;Z)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v13, :cond_5

    .line 750
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 752
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v13, :cond_3

    .line 757
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const v15, 0x203013f

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 759
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 760
    .local v10, "res":Landroid/content/res/Resources;
    const/high16 v13, 0x2050000

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 761
    .local v7, "leftPad":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v12

    .line 762
    .local v12, "topPad":I
    move v11, v7

    .line 763
    .local v11, "rightPad":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 764
    .local v2, "bottomPad":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13, v7, v12, v11, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 782
    .end local v2    # "bottomPad":I
    .end local v7    # "leftPad":I
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "rightPad":I
    .end local v12    # "topPad":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxLabel:Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020065

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 785
    .local v3, "buttonPanel":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 786
    .local v9, "parentPanel":Landroid/view/ViewGroup;
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 788
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 789
    .local v6, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckPanelLayout:I

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    .line 792
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    const v14, 0x1020001

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    .line 793
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxDefault:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox_setChecked(Z)V

    .line 794
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox_setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    const v14, 0x1020014

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    .line 798
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxLabel:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    new-instance v13, Lcom/htc/dialog/HtcAlertController$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/dialog/HtcAlertController$2;-><init>(Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 821
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxEnabled:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/dialog/HtcAlertController;->setCheckBoxEnabled(Z)V

    .line 824
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-nez v13, :cond_7

    .line 827
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    .line 828
    .restart local v7    # "leftPad":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v12

    .line 829
    .restart local v12    # "topPad":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v11

    .line 830
    .restart local v11    # "rightPad":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v7, v12, v11, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 832
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 833
    .restart local v10    # "res":Landroid/content/res/Resources;
    const v13, 0x2050006

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 834
    .local v1, "M3x2":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 835
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    .line 836
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 837
    .restart local v2    # "bottomPad":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v13, v7, v1, v11, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 839
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 855
    .end local v1    # "M3x2":I
    .end local v2    # "bottomPad":I
    .end local v7    # "leftPad":I
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "rightPad":I
    .end local v12    # "topPad":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 768
    .end local v3    # "buttonPanel":Landroid/view/View;
    .end local v5    # "index":I
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "parentPanel":Landroid/view/ViewGroup;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v13, :cond_6

    .line 772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020061    # 9.551E-38f

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v13 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 777
    :cond_6
    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 840
    .restart local v3    # "buttonPanel":Landroid/view/View;
    .restart local v5    # "index":I
    .restart local v6    # "inflater":Landroid/view/LayoutInflater;
    .restart local v9    # "parentPanel":Landroid/view/ViewGroup;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v13, :cond_4

    .line 843
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    const v14, 0x202007f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 844
    .local v4, "checkBoxDivider":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 845
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    iput v13, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 846
    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v6, 0x202005d

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 662
    const/4 v1, 0x1

    .line 664
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 666
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 669
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 672
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 673
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 734
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 675
    :cond_1
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 677
    .local v0, "hasTextTitle":Z
    :cond_2
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x2020055

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    .line 678
    if-eqz v0, :cond_7

    .line 680
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x202005e

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    .line 682
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    if-lez v4, :cond_5

    .line 689
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 704
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleCenter:Z

    if-eqz v4, :cond_4

    .line 705
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 709
    :cond_4
    iget-boolean v4, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 711
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const v6, 0x2030131

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 690
    :cond_5
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 691
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 692
    :cond_6
    iget v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    if-nez v4, :cond_3

    .line 697
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 701
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 727
    :cond_7
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 728
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 731
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 13

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020060

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 627
    .local v2, "contentPanel":Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/htc/dialog/HtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 628
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->setupButtons()Z

    move-result v4

    .line 630
    .local v4, "hasButtons":Z
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x202005c

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 631
    .local v1, "topPanel":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v10, Lcom/htc/internal/R$styleable;->AlertDialog:[I

    const v11, 0x2010039

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 633
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/htc/dialog/HtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 635
    .local v6, "hasTitle":Z
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020065

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 636
    .local v7, "buttonPanel":Landroid/view/View;
    if-nez v4, :cond_0

    if-nez v6, :cond_0

    .line 637
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 641
    :cond_0
    const/4 v3, 0x0

    .line 642
    .local v3, "customPanel":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 643
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020063

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "customPanel":Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 644
    .restart local v3    # "customPanel":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020064

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 645
    .local v8, "custom":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 647
    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingLeft:I

    iget v9, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingTop:I

    iget v10, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingRight:I

    iget v11, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 651
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .end local v8    # "custom":Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    move-object v0, p0

    .line 657
    invoke-direct/range {v0 .. v7}, Lcom/htc/dialog/HtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 658
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 659
    return-void

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020063

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 587
    packed-switch p1, :pswitch_data_0

    .line 595
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 589
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 591
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 593
    :pswitch_2
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPadding1()Landroid/view/View;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    return-object v0
.end method

.method public getPadding3()Landroid/view/View;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 292
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 294
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/htc/dialog/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 299
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->setupView()V

    .line 300
    return-void
.end method

.method public isCheckBoxChecked()Z
    .locals 1

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox_isChecked()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 381
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 382
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 385
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :pswitch_0
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 389
    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 405
    :goto_0
    return-void

    .line 393
    :pswitch_1
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 394
    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 398
    :pswitch_2
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 399
    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDisabled(IZ)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :pswitch_0
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveDisabled:Z

    .line 443
    :goto_0
    return-void

    .line 433
    :pswitch_1
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    .line 437
    :pswitch_2
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCheckBox(Ljava/lang/CharSequence;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Z)V
    .locals 0
    .param p1, "checkBoxLabel"    # Ljava/lang/CharSequence;
    .param p2, "checkBoxDefault"    # Z
    .param p3, "checkBoxListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p4, "checkBoxEnabled"    # Z

    .prologue
    .line 469
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxLabel:Ljava/lang/CharSequence;

    .line 470
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxDefault:Z

    .line 471
    iput-object p3, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 472
    iput-boolean p4, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxEnabled:Z

    .line 473
    return-void
.end method

.method public setCheckBoxChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox_setChecked(Z)V

    .line 497
    return-void
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxEnabled:Z

    .line 484
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 486
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    .line 323
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
    iput p1, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    .line 536
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 537
    if-lez p1, :cond_1

    .line 538
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    if-nez p1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 554
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    .line 569
    return-void
.end method

.method public setIsAutoMotive(Z)V
    .locals 1
    .param p1, "isAutoMotive"    # Z

    .prologue
    .line 1246
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    .line 1248
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v0, :cond_0

    .line 1249
    const v0, 0x209000d

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mAlertDialogLayout:I

    .line 1250
    const v0, 0x2090020

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mMultiChoiceItemLayout:I

    .line 1251
    const v0, 0x2090022

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mSingleChoiceItemLayout:I

    .line 1252
    const v0, 0x209001e

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mListItemLayout:I

    .line 1253
    const v0, 0x2090067

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mListLayout:I

    .line 1254
    const v0, 0x209001c

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckPanelLayout:I

    .line 1257
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 332
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "nAutoLinkMask"    # I

    .prologue
    .line 412
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 413
    iput p2, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    .line 415
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 417
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 309
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mTitleCenter:Z

    .line 458
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    .line 345
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    .line 360
    iput p2, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingLeft:I

    .line 361
    iput p3, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingTop:I

    .line 362
    iput p4, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingRight:I

    .line 363
    iput p5, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingBottom:I

    .line 364
    return-void
.end method
