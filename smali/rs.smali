.class final Lrs;
.super Lvx;
.source "TelSdkBlcHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrs$a;
    }
.end annotation


# instance fields
.field private a:Lrs$a;

.field private b:Lrq;

.field private c:Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lvx;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lrq;

    invoke-direct {v0}, Lrq;-><init>()V

    iput-object v0, p0, Lrs;->b:Lrq;

    .line 60
    invoke-virtual {p0, p0}, Lrs;->setOperationListener(Lyn;)V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrs;->d:Ljava/util/HashMap;

    .line 62
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/framework/lms/LmsCallInfo;Lrs$a;)I
    .locals 10
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "callInfo"    # Lcom/iflytek/framework/lms/LmsCallInfo;
    .param p3, "listener"    # Lrs$a;

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    const-string/jumbo v0, "TelSdkBlcHelper"

    const-string/jumbo v1, "requestFlow() callInfo is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, -0x1

    .line 92
    :goto_0
    return v0

    .line 70
    :cond_0
    iput-object p3, p0, Lrs;->a:Lrs$a;

    .line 71
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=1005"

    invoke-virtual {p0, v0}, Lrs;->setServerUrl(Ljava/lang/String;)V

    .line 72
    new-instance v5, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v0, "param"

    invoke-direct {v5, v0}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 73
    .local v5, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    iget-object v0, p0, Lrs;->c:Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    if-eqz v0, :cond_1

    .line 74
    new-instance v7, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v0, "object"

    invoke-direct {v7, v0}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 75
    .local v7, "objectElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v6, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v0, "data_source"

    invoke-direct {v6, v0}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 76
    .local v6, "dataSrcElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v0, "id"

    invoke-virtual {v6, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    iget-object v0, p0, Lrs;->c:Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    .line 77
    invoke-virtual {v0}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->getDataSrcId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lrs;->c:Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    .line 78
    invoke-virtual {v0}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->getDataSrcId()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_1
    invoke-virtual {v1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "name"

    invoke-virtual {v6, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    iget-object v0, p0, Lrs;->c:Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    .line 80
    invoke-virtual {v0}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->getDataSrcName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lrs;->c:Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    .line 81
    invoke-virtual {v0}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->getDataSrcName()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_2
    invoke-virtual {v1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v7, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 83
    invoke-virtual {v5, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 86
    .end local v6    # "dataSrcElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v7    # "objectElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_1
    const-string/jumbo v1, "data_transfer_client"

    const/16 v2, 0x1a

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lrs;->sendRequestFromCaller(Ljava/lang/String;ILcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/framework/lms/LmsCallInfo;Lcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v8

    .line 88
    .local v8, "requestId":J
    iget-object v0, p0, Lrs;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lrs;->d:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    .end local v8    # "requestId":J
    .restart local v6    # "dataSrcElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v7    # "objectElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1

    .line 81
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 98
    const-string/jumbo v3, "TelSdkBlcHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResult errorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requestType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 100
    .local v2, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    iget-object v3, p0, Lrs;->d:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lrs;->d:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lrs;->d:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    check-cast v2, Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 104
    .restart local v2    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_0
    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    .line 105
    instance-of v3, p2, Lwa;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 106
    check-cast v0, Lwa;

    .line 107
    .local v0, "busResult":Lwa;
    packed-switch p5, :pswitch_data_0

    .line 140
    .end local v0    # "busResult":Lwa;
    :cond_1
    :goto_0
    return-void

    .line 109
    .restart local v0    # "busResult":Lwa;
    :pswitch_0
    iget-object v3, p0, Lrs;->b:Lrq;

    if-eqz v3, :cond_1

    .line 110
    iget-object v3, p0, Lrs;->b:Lrq;

    .line 111
    invoke-virtual {v0}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Lrq;->a(Ljava/lang/String;)Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    move-result-object v1

    .line 112
    .local v1, "flowResult":Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;
    iput-object v1, p0, Lrs;->c:Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    .line 113
    const-string/jumbo v3, "000000"

    iget-object v4, p0, Lrs;->c:Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    .line 114
    invoke-virtual {v4}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lrs;->a:Lrs$a;

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lrs;->a:Lrs$a;

    invoke-interface {v3, v2, p5, v1}, Lrs$a;->a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/yd/business/OperationInfo;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v3, p0, Lrs;->a:Lrs$a;

    if-eqz v3, :cond_1

    .line 120
    const-string/jumbo v3, "199998"

    iget-object v4, p0, Lrs;->c:Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    invoke-virtual {v4}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    iget-object v3, p0, Lrs;->a:Lrs$a;

    const/16 v4, 0x3f1

    invoke-interface {v3, v2, p5, v4}, Lrs$a;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v3, p0, Lrs;->a:Lrs$a;

    invoke-interface {v3, v2, p5, p1}, Lrs$a;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 136
    .end local v0    # "busResult":Lwa;
    .end local v1    # "flowResult":Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;
    :cond_4
    iget-object v3, p0, Lrs;->a:Lrs$a;

    if-eqz v3, :cond_1

    .line 137
    iget-object v3, p0, Lrs;->a:Lrs$a;

    invoke-interface {v3, v2, p5, p1}, Lrs$a;->a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method
