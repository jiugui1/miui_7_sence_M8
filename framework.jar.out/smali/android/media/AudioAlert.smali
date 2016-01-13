.class public Landroid/media/AudioAlert;
.super Landroid/os/Handler;
.source "AudioAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAlert$Timer;
    }
.end annotation


# static fields
.field private static final KEY_CHECKBOX_SELLECTED:Ljava/lang/String; = "listen_notify_checkbox_sellected"

.field private static final KEY_OCCUPIED_TIME:Ljava/lang/String; = "listen_notify_occupied_time"

.field private static final MSG_FORCE_DIALOG_SHOW_IF_AVAILABLE:I = 0x1

.field private static final MSG_SHOW_DIALOG:I

.field private static TIME_DURATION:J

.field private static mBoxChecked:Z

.field private static mForceDialogShow:Z

.field private static mTimer:Landroid/media/AudioAlert$Timer;


# instance fields
.field private TAG:Ljava/lang/String;

.field private isTriggered:Z

.field private mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mOKClick:Landroid/content/DialogInterface$OnClickListener;

.field private mOccupiedTime:J

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioAlert;->mBoxChecked:Z

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/AudioAlert;->mForceDialogShow:Z

    .line 60
    const-wide/32 v0, 0x44aa200

    sput-wide v0, Landroid/media/AudioAlert;->TIME_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "duration"    # J

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 47
    const-string v1, "AudioAlert"

    iput-object v1, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    .line 53
    iput-wide v3, p0, Landroid/media/AudioAlert;->mStartTime:J

    .line 54
    iput-wide v3, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    .line 57
    iput-boolean v2, p0, Landroid/media/AudioAlert;->isTriggered:Z

    .line 70
    new-instance v1, Landroid/media/AudioAlert$1;

    invoke-direct {v1, p0}, Landroid/media/AudioAlert$1;-><init>(Landroid/media/AudioAlert;)V

    iput-object v1, p0, Landroid/media/AudioAlert;->mOKClick:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    new-instance v1, Landroid/media/AudioAlert$2;

    invoke-direct {v1, p0}, Landroid/media/AudioAlert$2;-><init>(Landroid/media/AudioAlert;)V

    iput-object v1, p0, Landroid/media/AudioAlert;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 97
    iput-object p1, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    .line 98
    const-wide/16 v5, -0x1

    cmp-long v1, p2, v5

    if-eqz v1, :cond_0

    .line 99
    sput-wide p2, Landroid/media/AudioAlert;->TIME_DURATION:J

    .line 101
    :cond_0
    iget-object v1, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "listen_notify_checkbox_sellected"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    sput-boolean v1, Landroid/media/AudioAlert;->mBoxChecked:Z

    .line 103
    iget-object v1, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "listen_notify_occupied_time"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    sput-boolean v2, Landroid/media/AudioAlert;->mForceDialogShow:Z

    .line 106
    :cond_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    iput-wide v1, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    .line 107
    iget-object v1, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read DB, is check box selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/media/AudioAlert;->mBoxChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time occupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Landroid/media/AudioAlert;->TIME_DURATION:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    :cond_2
    move v1, v2

    .line 102
    goto :goto_0

    :cond_3
    move-wide v1, v3

    .line 106
    goto :goto_1
.end method

.method static synthetic access$000(Landroid/media/AudioAlert;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAlert;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Landroid/media/AudioAlert;->mBoxChecked:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 46
    sput-boolean p0, Landroid/media/AudioAlert;->mBoxChecked:Z

    return p0
.end method

.method static synthetic access$200()Landroid/media/AudioAlert$Timer;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/media/AudioAlert;->mTimer:Landroid/media/AudioAlert$Timer;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioAlert;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAlert;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/media/AudioAlert;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/AudioAlert;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/AudioAlert;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/media/AudioAlert;->getSystemTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 46
    sget-wide v0, Landroid/media/AudioAlert;->TIME_DURATION:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/media/AudioAlert;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAlert;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSystemTime()J
    .locals 4

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    return-void
.end method

.method private showDialog()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x2

    .line 157
    iget-object v9, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v10, "initView +"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v9, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 160
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x3030002

    invoke-virtual {v5, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 161
    .local v3, "content":Landroid/view/View;
    const/high16 v9, 0x3110000

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 162
    .local v7, "msgText":Landroid/widget/TextView;
    const v9, 0x30700af

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 163
    const v9, 0x3110001

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 164
    .local v1, "cb":Landroid/widget/CheckBox;
    iget-object v9, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "btn_check_holo_light"

    const-string v11, "drawable"

    const-string v12, "com.htc"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 165
    .local v4, "identifier":I
    if-eqz v4, :cond_0

    .line 166
    iget-object v9, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    iget-object v9, p0, Landroid/media/AudioAlert;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    const v9, 0x3110002

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 170
    .local v2, "cbText":Landroid/widget/TextView;
    const v9, 0x30700b0

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 172
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v9, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, "builder":Lcom/htc/dialog/HtcAlertDialog$Builder;
    const v9, 0x2040172

    invoke-virtual {v0, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 174
    invoke-virtual {v0, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 175
    const v9, 0x104000a

    iget-object v10, p0, Landroid/media/AudioAlert;->mOKClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v9, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v9

    iput-object v9, p0, Landroid/media/AudioAlert;->mDialog:Landroid/app/Dialog;

    .line 177
    iget-object v9, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v10, "AlertDialog is ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v9, p0, Landroid/media/AudioAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 181
    .local v8, "window":Landroid/view/Window;
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 182
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 183
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object v14, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 185
    const/16 v9, 0x32

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 186
    const/16 v9, 0x7d3

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 187
    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 188
    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 189
    invoke-virtual {v8, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 190
    const/16 v9, 0x28

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 191
    iget-object v9, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v10, "initView -"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v9, p0, Landroid/media/AudioAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 194
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioAlert;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "dialog is already there, ignore it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_0
    sget-boolean v0, Landroid/media/AudioAlert;->mBoxChecked:Z

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "Because \"Don\'t show me again\" is selected, abandon audio alert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/AudioAlert;->getSystemTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Landroid/media/AudioAlert;->showDialog()V

    goto :goto_0

    .line 214
    :pswitch_1
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/AudioAlert;->mForceDialogShow:Z

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/media/AudioAlert;->isTriggered:Z

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "it\'s already stopped, ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-boolean v0, Landroid/media/AudioAlert;->mBoxChecked:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-wide v0, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    invoke-direct {p0}, Landroid/media/AudioAlert;->getSystemTime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/media/AudioAlert;->mStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    .line 145
    iget-wide v0, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    sget-wide v2, Landroid/media/AudioAlert;->TIME_DURATION:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    .line 146
    const-string v0, "listen_notify_occupied_time"

    iget-wide v1, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioAlert;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v0, Landroid/media/AudioAlert;->mTimer:Landroid/media/AudioAlert$Timer;

    invoke-virtual {v0}, Landroid/media/AudioAlert$Timer;->interrupt()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioAlert;->isTriggered:Z

    goto :goto_0
.end method

.method public trigger()V
    .locals 9

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/AudioAlert;->isTriggered:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "it\'s already triggered, ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget-boolean v0, Landroid/media/AudioAlert;->mBoxChecked:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "tirggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Landroid/media/AudioAlert;->getSystemTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/AudioAlert;->mStartTime:J

    .line 124
    new-instance v0, Landroid/media/AudioAlert$Timer;

    iget-wide v2, p0, Landroid/media/AudioAlert;->mStartTime:J

    sget-boolean v1, Landroid/media/AudioAlert;->mForceDialogShow:Z

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    iget-object v1, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioAlert$Timer;-><init>(Landroid/media/AudioAlert;JJLandroid/media/AudioAlert;Landroid/app/ActivityManager;Landroid/media/AudioManager;)V

    sput-object v0, Landroid/media/AudioAlert;->mTimer:Landroid/media/AudioAlert$Timer;

    .line 129
    sget-object v0, Landroid/media/AudioAlert;->mTimer:Landroid/media/AudioAlert$Timer;

    invoke-virtual {v0}, Landroid/media/AudioAlert$Timer;->start()V

    .line 130
    const-string v0, "listen_notify_occupied_time"

    iget-wide v1, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioAlert;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioAlert;->mForceDialogShow:Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioAlert;->isTriggered:Z

    goto :goto_0

    .line 124
    :cond_2
    sget-wide v4, Landroid/media/AudioAlert;->TIME_DURATION:J

    iget-wide v6, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    sub-long/2addr v4, v6

    goto :goto_1
.end method