.class public Lcom/iflytek/common/adaptation/mms/Haier6370TMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "Haier6370TMmsAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 20
    const-string/jumbo v0, "Haier6370TMmsAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/Haier6370TMmsAdapter;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 55
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "scCenter"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "threadId"    # J
    .param p7, "messageId"    # J
    .param p9, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    .line 34
    .local v6, "smsMgr":Landroid/telephony/SmsManager;
    :try_start_0
    const-string/jumbo v7, "android.telephony.SmsManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    .local v0, "cls":Ljava/lang/Class;
    const-string/jumbo v7, "sendTextMessage"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 38
    .local v4, "sendTextMessage":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 39
    .local v1, "deliveryIntents":Landroid/app/PendingIntent;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    iget-object v8, p0, Lcom/iflytek/common/adaptation/mms/Haier6370TMmsAdapter;->mContext:Landroid/content/Context;

    const-class v9, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v3, v7, p4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v3, "itSend":Landroid/content/Intent;
    iget-object v7, p0, Lcom/iflytek/common/adaptation/mms/Haier6370TMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 43
    .local v5, "sentIntents":Landroid/app/PendingIntent;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    const/4 v8, 0x3

    aput-object p3, v7, v8

    const/4 v8, 0x4

    aput-object v5, v7, v8

    const/4 v8, 0x5

    aput-object v1, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "deliveryIntents":Landroid/app/PendingIntent;
    .end local v3    # "itSend":Landroid/content/Intent;
    .end local v4    # "sendTextMessage":Ljava/lang/reflect/Method;
    .end local v5    # "sentIntents":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Haier6370TMmsAdapter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
