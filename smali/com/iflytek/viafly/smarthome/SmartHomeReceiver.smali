.class public Lcom/iflytek/viafly/smarthome/SmartHomeReceiver;
.super Lcom/iflytek/viafly/AbsBroadcastReceiver;
.source "SmartHomeReceiver.java"


# instance fields
.field private final RESPONSE:Ljava/lang/String;

.field private final SMARTHOME_RESPONSE:Ljava/lang/String;

.field private final SMARTHOME_RESPONSE2:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/iflytek/viafly/AbsBroadcastReceiver;-><init>()V

    .line 15
    const-string/jumbo v0, "SmartHomeReceiver"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeReceiver;->TAG:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "com.iflytek.lingxi.smarthome.response"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeReceiver;->SMARTHOME_RESPONSE:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "com.iflytek.cmcc.smarthome.response"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeReceiver;->SMARTHOME_RESPONSE2:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "response"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeReceiver;->RESPONSE:Ljava/lang/String;

    return-void
.end method

.method private isValidResponse(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string/jumbo v0, "com.iflytek.lingxi.smarthome.response"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.iflytek.cmcc.smarthome.response"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseResponse(Ljava/lang/String;Landroid/content/Context;)I
    .locals 1
    .param p1, "resp"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p2}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p2}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->handleResponse(Ljava/lang/String;)V

    .line 50
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onReceiveHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeReceiver;->isValidResponse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string/jumbo v1, "response"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "resp":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeReceiver;->parseResponse(Ljava/lang/String;Landroid/content/Context;)I

    goto :goto_0
.end method
