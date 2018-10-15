.class public Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;
.super Lvx;
.source "SmsUploadRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsUploadRequest"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;

.field private smsCollectData:Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;
    .param p3, "listener"    # Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lvx;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->smsCollectData:Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    .line 44
    iput-object p3, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->listener:Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;

    .line 46
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "x3"    # J
    .param p5, "x4"    # I

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->handleResult(ILcom/iflytek/yd/business/OperationInfo;JI)V

    return-void
.end method

.method private handleResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 100
    const-string/jumbo v0, "SmsUploadRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleResult | errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 102
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->handleResult(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 104
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->notifyFailed()V

    goto :goto_0
.end method

.method private handleResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string/jumbo v3, "SmsUploadRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleResult | result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->notifyFailed()V

    .line 115
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "retcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "errorCode":Ljava/lang/String;
    const-string/jumbo v3, "000000"

    invoke-static {v1, v3}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->notifySuccess()V

    .line 126
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 120
    .restart local v1    # "errorCode":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->notifyFailed()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "SmsUploadRequest"

    const-string/jumbo v4, "JSONException"

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->notifyFailed()V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/flowwallet/do?c=1050"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->setServerUrl(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest$1;-><init>(Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->setOperationListener(Lyn;)V

    .line 60
    return-void
.end method

.method private notifyFailed()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->listener:Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->listener:Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;->onSmsUploadFailed()V

    .line 132
    :cond_0
    return-void
.end method

.method private notifySuccess()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->listener:Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->listener:Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;->onSmsUploadSuccess()V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public sendRequest()J
    .locals 10

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->smsCollectData:Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    if-nez v0, :cond_0

    .line 67
    const-wide/16 v0, -0x1

    .line 95
    :goto_0
    return-wide v0

    .line 69
    :cond_0
    const-string/jumbo v0, "SmsUploadRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequest | smsCollectData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->smsCollectData:Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->context:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v6

    .line 71
    .local v6, "config":Lcom/iflytek/yd/business/AppConfig;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v3, "baseNode":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v4, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v0, "aid"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v0, "pver"

    const-string/jumbo v1, "1.0"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string/jumbo v0, "apn"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string/jumbo v0, "imei"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v0, "imsi"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v0, "resolution"

    const-string/jumbo v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v0, "userid"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v0, "sid"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v0, "version"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v0, "osid"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v0, "msgtype"

    const-string/jumbo v1, "2"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v0, "msgcontent"

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->smsCollectData:Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v0, "reqphone"

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->smsCollectData:Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->getDestinationNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v0, "respphone"

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->smsCollectData:Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->getReplyNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v0, "sendtime"

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->smsCollectData:Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->getSendTime()J

    move-result-wide v8

    invoke-virtual {v4, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v0, "recievetime"

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->smsCollectData:Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->getReceiveTime()J

    move-result-wide v8

    invoke-virtual {v4, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    const-string/jumbo v1, "1050"

    const/16 v2, 0x47

    const-string/jumbo v5, "3.0"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_0

    .line 91
    :catch_0
    move-exception v7

    .line 92
    .local v7, "ex":Lorg/json/JSONException;
    const-string/jumbo v0, "SmsUploadRequest"

    const-string/jumbo v1, "sendRequest | add json exception"

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
