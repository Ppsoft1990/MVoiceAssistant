.class final Lcom/iflytek/base/mms/SmsService$a;
.super Landroid/os/Handler;
.source "SmsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/mms/SmsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/mms/SmsService;


# direct methods
.method public constructor <init>(Lcom/iflytek/base/mms/SmsService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    .line 142
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 150
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 151
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_SMS_OBSERVER_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v3}, Lcom/iflytek/base/mms/SmsService;->a(Lcom/iflytek/base/mms/SmsService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SmsService ACTION_SMS_OBSERVER_CHANGED"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v3}, Lcom/iflytek/base/mms/SmsService;->b(Lcom/iflytek/base/mms/SmsService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmz;->a(Landroid/content/Context;)V

    .line 157
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v3}, Lcom/iflytek/base/mms/SmsService;->c(Lcom/iflytek/base/mms/SmsService;)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v2

    .line 158
    .local v2, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    if-nez v2, :cond_1

    .line 159
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v3}, Lcom/iflytek/base/mms/SmsService;->b(Lcom/iflytek/base/mms/SmsService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v4}, Lcom/iflytek/base/mms/SmsService;->a(Lcom/iflytek/base/mms/SmsService;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "searchUnReadSms null"

    invoke-static {v3, v4, v5}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :cond_1
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->addSmsDBChangeReadCount()V

    .line 162
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v3}, Lcom/iflytek/base/mms/SmsService;->a(Lcom/iflytek/base/mms/SmsService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "searchUnReadSms | addSmsDBChangeCount"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v3, v2}, Lcom/iflytek/base/mms/SmsService;->a(Lcom/iflytek/base/mms/SmsService;Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto :goto_0

    .line 166
    .end local v2    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :cond_2
    const-string/jumbo v3, "com.iflytek.cmcc.RECEIVE_SMS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v3}, Lcom/iflytek/base/mms/SmsService;->a(Lcom/iflytek/base/mms/SmsService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ServiceHandler.handleMessage | addSmsBroadcastCount"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->addSmsBroadcastCount()V

    .line 169
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/base/mms/SmsService;->a(Lcom/iflytek/base/mms/SmsService;Landroid/net/Uri;)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v2

    .line 170
    .restart local v2    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    if-nez v2, :cond_3

    .line 171
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v3}, Lcom/iflytek/base/mms/SmsService;->a(Lcom/iflytek/base/mms/SmsService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "queryMessageFromUri ---> null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v3}, Lcom/iflytek/base/mms/SmsService;->b(Lcom/iflytek/base/mms/SmsService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v4}, Lcom/iflytek/base/mms/SmsService;->a(Lcom/iflytek/base/mms/SmsService;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "handleMessage queryMessageFromUri return null"

    invoke-static {v3, v4, v5}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_3
    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService$a;->a:Lcom/iflytek/base/mms/SmsService;

    invoke-static {v3, v2}, Lcom/iflytek/base/mms/SmsService;->a(Lcom/iflytek/base/mms/SmsService;Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto :goto_0
.end method
