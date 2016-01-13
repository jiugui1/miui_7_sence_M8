.class public abstract Lcom/kikin/KikinServiceConnection;
.super Ljava/lang/Object;
.source "KikinServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/KikinServiceConnection$DelayedMessage;,
        Lcom/kikin/KikinServiceConnection$ServiceStateListener;,
        Lcom/kikin/KikinServiceConnection$MessageType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KikinServiceConnection"


# instance fields
.field private connected:Z

.field private connecting:Z

.field private context:Landroid/content/Context;

.field private incomingMessenger:Landroid/os/Messenger;

.field private key:Ljava/lang/String;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kikin/KikinServiceConnection$DelayedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private outgoingMessenger:Landroid/os/Messenger;

.field private serviceStateListener:Lcom/kikin/KikinServiceConnection$ServiceStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incomingMessageHadler"    # Landroid/os/Handler;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kikin/KikinServiceConnection;->messages:Ljava/util/ArrayList;

    .line 159
    iput-object p1, p0, Lcom/kikin/KikinServiceConnection;->context:Landroid/content/Context;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    rem-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/KikinServiceConnection;->key:Ljava/lang/String;

    .line 165
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/kikin/KikinServiceConnection;->incomingMessenger:Landroid/os/Messenger;

    .line 166
    return-void
.end method

.method private addDelayedMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "messageType"    # Lcom/kikin/interfaces/KikinMessageType;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 399
    iget-object v1, p0, Lcom/kikin/KikinServiceConnection;->messages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/kikin/KikinServiceConnection;->messages:Ljava/util/ArrayList;

    new-instance v2, Lcom/kikin/KikinServiceConnection$DelayedMessage;

    invoke-direct {v2, p0, p1, p2}, Lcom/kikin/KikinServiceConnection$DelayedMessage;-><init>(Lcom/kikin/KikinServiceConnection;Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerClient()Z
    .locals 7

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    iget-object v4, p0, Lcom/kikin/KikinServiceConnection;->context:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 414
    iget-object v4, p0, Lcom/kikin/KikinServiceConnection;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 416
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .local v1, "componentName":Landroid/content/ComponentName;
    :goto_0
    if-nez v1, :cond_0

    .line 417
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/kikin/KikinServiceConnection;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unknown"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :goto_1
    const/4 v4, 0x0

    :try_start_2
    sget-object v5, Lcom/kikin/KikinServiceConnection$MessageType;->REGISTER_CLIENT:Lcom/kikin/KikinServiceConnection$MessageType;

    invoke-virtual {v5}, Lcom/kikin/KikinServiceConnection$MessageType;->getValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 422
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key"

    iget-object v6, p0, Lcom/kikin/KikinServiceConnection;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "componentName"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 424
    iget-object v4, p0, Lcom/kikin/KikinServiceConnection;->incomingMessenger:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 425
    iget-object v4, p0, Lcom/kikin/KikinServiceConnection;->outgoingMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 431
    const/4 v4, 0x1

    .end local v3    # "msg":Landroid/os/Message;
    :goto_2
    return v4

    .line 427
    :catch_0
    move-exception v2

    .line 428
    .local v2, "e":Ljava/lang/Throwable;
    :goto_3
    const-string v4, "KikinServiceConnection"

    const-string v5, "failed to register client"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    const/4 v4, 0x0

    goto :goto_2

    .line 427
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    goto :goto_3

    .end local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    :cond_0
    move-object v0, v1

    .end local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    goto :goto_1

    :cond_1
    move-object v1, v0

    .end local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private unregisterClient()Z
    .locals 5

    .prologue
    .line 441
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/kikin/KikinServiceConnection$MessageType;->UNREGISTER_CLIENT:Lcom/kikin/KikinServiceConnection$MessageType;

    invoke-virtual {v3}, Lcom/kikin/KikinServiceConnection$MessageType;->getValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 442
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key"

    iget-object v4, p0, Lcom/kikin/KikinServiceConnection;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/kikin/KikinServiceConnection;->outgoingMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    const/4 v2, 0x1

    .line 447
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return v2

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "KikinServiceConnection"

    const-string v3, "failed to unregister client"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 5

    .prologue
    .line 248
    monitor-enter p0

    .line 250
    :try_start_0
    iget-boolean v3, p0, Lcom/kikin/KikinServiceConnection;->connected:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/kikin/KikinServiceConnection;->connecting:Z

    if-eqz v3, :cond_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_0
    return-void

    .line 254
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kikin/KikinServiceConnection;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/kikin/KikinServiceConnection;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 256
    .local v2, "success":Z
    if-nez v2, :cond_2

    .line 257
    const-string v3, "KikinServiceConnection"

    const-string v4, "failed to bind service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "success":Z
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 259
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "success":Z
    :cond_2
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lcom/kikin/KikinServiceConnection;->connecting:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 261
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "success":Z
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "KikinServiceConnection"

    const-string v4, "failed to bind service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-boolean v1, p0, Lcom/kikin/KikinServiceConnection;->connected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/kikin/KikinServiceConnection;->connecting:Z

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kikin/KikinServiceConnection;->connected:Z

    .line 277
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kikin/KikinServiceConnection;->connecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :try_start_1
    invoke-direct {p0}, Lcom/kikin/KikinServiceConnection;->unregisterClient()Z

    .line 284
    iget-object v1, p0, Lcom/kikin/KikinServiceConnection;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 290
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KikinServiceConnection"

    const-string v2, "failed to unbind service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public abstract getAction()Ljava/lang/String;
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/kikin/KikinServiceConnection;->connected:Z

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/kikin/KikinServiceConnection;->connecting:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 187
    monitor-enter p0

    .line 189
    :try_start_0
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/kikin/KikinServiceConnection;->outgoingMessenger:Landroid/os/Messenger;

    .line 190
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kikin/KikinServiceConnection;->connected:Z

    .line 191
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kikin/KikinServiceConnection;->connecting:Z

    .line 194
    invoke-direct {p0}, Lcom/kikin/KikinServiceConnection;->registerClient()Z

    .line 197
    iget-object v2, p0, Lcom/kikin/KikinServiceConnection;->serviceStateListener:Lcom/kikin/KikinServiceConnection$ServiceStateListener;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/kikin/KikinServiceConnection;->serviceStateListener:Lcom/kikin/KikinServiceConnection$ServiceStateListener;

    invoke-interface {v2}, Lcom/kikin/KikinServiceConnection$ServiceStateListener;->onServiceConnected()V

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/kikin/KikinServiceConnection;->messages:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    :try_start_1
    iget-object v2, p0, Lcom/kikin/KikinServiceConnection;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kikin/KikinServiceConnection$DelayedMessage;

    .line 204
    .local v1, "message":Lcom/kikin/KikinServiceConnection$DelayedMessage;
    invoke-virtual {v1}, Lcom/kikin/KikinServiceConnection$DelayedMessage;->send()V

    goto :goto_0

    .line 208
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "message":Lcom/kikin/KikinServiceConnection$DelayedMessage;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 209
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 207
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/kikin/KikinServiceConnection;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 208
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 210
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 214
    monitor-enter p0

    .line 216
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/kikin/KikinServiceConnection;->outgoingMessenger:Landroid/os/Messenger;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinServiceConnection;->connected:Z

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinServiceConnection;->connecting:Z

    .line 221
    iget-object v0, p0, Lcom/kikin/KikinServiceConnection;->serviceStateListener:Lcom/kikin/KikinServiceConnection$ServiceStateListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/kikin/KikinServiceConnection;->serviceStateListener:Lcom/kikin/KikinServiceConnection$ServiceStateListener;

    invoke-interface {v0}, Lcom/kikin/KikinServiceConnection$ServiceStateListener;->onServiceDisconnected()V

    .line 224
    :cond_0
    monitor-exit p0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendMessage(Lcom/kikin/interfaces/KikinMessageType;)Z
    .locals 2
    .param p1, "messageType"    # Lcom/kikin/interfaces/KikinMessageType;

    .prologue
    .line 324
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/kikin/KikinServiceConnection;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "messageType"    # Lcom/kikin/interfaces/KikinMessageType;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/kikin/KikinServiceConnection;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method protected sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;Z)Z
    .locals 7
    .param p1, "messageType"    # Lcom/kikin/interfaces/KikinMessageType;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "runOnConnect"    # Z

    .prologue
    const/4 v3, 0x0

    .line 356
    monitor-enter p0

    .line 359
    :try_start_0
    iget-boolean v4, p0, Lcom/kikin/KikinServiceConnection;->connecting:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/kikin/KikinServiceConnection;->connected:Z

    if-nez v4, :cond_2

    .line 360
    :cond_0
    iget-boolean v4, p0, Lcom/kikin/KikinServiceConnection;->connecting:Z

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/kikin/KikinServiceConnection;->addDelayedMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :goto_0
    return v3

    .line 368
    :cond_2
    if-nez p2, :cond_3

    .line 369
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .end local p2    # "data":Landroid/os/Bundle;
    .local v0, "data":Landroid/os/Bundle;
    move-object p2, v0

    .line 373
    .end local v0    # "data":Landroid/os/Bundle;
    .restart local p2    # "data":Landroid/os/Bundle;
    :cond_3
    const-string v4, "key"

    iget-object v5, p0, Lcom/kikin/KikinServiceConnection;->key:Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/kikin/interfaces/KikinMessageType;->getValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 377
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 378
    iget-object v4, p0, Lcom/kikin/KikinServiceConnection;->outgoingMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    const/4 v3, 0x1

    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 385
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "KikinServiceConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to send message ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public setServiceStateListener(Lcom/kikin/KikinServiceConnection$ServiceStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kikin/KikinServiceConnection$ServiceStateListener;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/kikin/KikinServiceConnection;->serviceStateListener:Lcom/kikin/KikinServiceConnection$ServiceStateListener;

    .line 240
    return-void
.end method
