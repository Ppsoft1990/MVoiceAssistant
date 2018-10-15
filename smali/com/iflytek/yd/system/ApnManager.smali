.class public Lcom/iflytek/yd/system/ApnManager;
.super Ljava/lang/Object;


# static fields
.field private static final PROXY_PORT:Ljava/lang/String; = "80"

.field private static final TAG:Ljava/lang/String; = "ApnManager"

.field private static final TELECOM_WAP_PROXY:Ljava/lang/String; = "10.0.0.200"

.field private static final TELECOM_WAP_PROXY2:Ljava/lang/String; = "010.000.000.200"

.field private static final WAP_PROXY:Ljava/lang/String; = "10.0.0.172"

.field private static final WAP_PROXY2:Ljava/lang/String; = "010.000.000.172"


# instance fields
.field private mApnEntity:Lcom/iflytek/yd/system/APNEntity;

.field private mContext:Landroid/content/Context;

.field private mMccNumber:Ljava/lang/String;

.field private mMncNumber:Ljava/lang/String;

.field private mSimType:Lcom/iflytek/yd/system/SimType;

.field private mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/yd/system/ApnManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/yd/system/ApnManager;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    iget-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/yd/system/SimInfoManager;->getSimType()Lcom/iflytek/yd/system/SimType;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mSimType:Lcom/iflytek/yd/system/SimType;

    iget-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/yd/system/SimInfoManager;->getMCCNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mMccNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mTelephonyManager:Lcom/iflytek/yd/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/yd/system/SimInfoManager;->getMNCNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mMncNumber:Ljava/lang/String;

    return-void
.end method

.method private correctApn(Lcom/iflytek/yd/system/APNEntity;)V
    .locals 3

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/yd/system/ApnManager;->isNeedCorrect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/iflytek/yd/system/a;->a:[I

    iget-object v2, p0, Lcom/iflytek/yd/system/ApnManager;->mSimType:Lcom/iflytek/yd/system/SimType;

    invoke-virtual {v2}, Lcom/iflytek/yd/system/SimType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    if-eqz v1, :cond_0

    const-string/jumbo v0, "10.0.0.200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "010.000.000.200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-string/jumbo v0, "ctwap"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    if-nez v1, :cond_3

    const-string/jumbo v0, "cmnet"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "cmwap"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_4

    const-string/jumbo v0, "3gnet"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "3gwap"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-nez v1, :cond_5

    const-string/jumbo v0, "ctnet"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "ctwap"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isNeedCorrect(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "3gwap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "3gnet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "uniwap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "uninet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cmwap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cmnet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ctwap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ctnet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNetApn(Lcom/iflytek/yd/system/APNEntity;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iflytek/yd/system/ApnManager;->isWapApn(Lcom/iflytek/yd/system/APNEntity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetApnTrue(Lcom/iflytek/yd/system/APNEntity;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/yd/system/ApnManager;->isNetApn(Lcom/iflytek/yd/system/APNEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/yd/system/ApnManager;->mSimType:Lcom/iflytek/yd/system/SimType;

    sget-object v2, Lcom/iflytek/yd/system/SimType;->China_Telecom:Lcom/iflytek/yd/system/SimType;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWapApnTrue(Lcom/iflytek/yd/system/APNEntity;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/iflytek/yd/system/ApnManager;->isWapApn(Lcom/iflytek/yd/system/APNEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getProxy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getMmsProxy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getMmsPort()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/iflytek/yd/system/a;->a:[I

    iget-object v6, p0, Lcom/iflytek/yd/system/ApnManager;->mSimType:Lcom/iflytek/yd/system/SimType;

    invoke-virtual {v6}, Lcom/iflytek/yd/system/SimType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_4

    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "10.0.0.172"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "010.000.000.172"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const-string/jumbo v1, "80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    if-eqz v3, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "10.0.0.172"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "010.000.000.172"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    const-string/jumbo v1, "80"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_7

    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "10.0.0.200"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "010.000.000.200"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_6
    const-string/jumbo v5, "80"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    if-eqz v3, :cond_9

    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "10.0.0.200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "010.000.000.200"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    const-string/jumbo v1, "80"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkAPNisTrue(Lcom/iflytek/yd/system/APNEntity;Lcom/iflytek/yd/system/APNType;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v1, "ApnManager"

    const-string/jumbo v2, "checkAPNisTrue false,apn is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/yd/system/ApnManager;->mMccNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getMcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/yd/system/ApnManager;->mMncNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "ApnManager"

    const-string/jumbo v2, "checkAPNisTrue false, apn.mcc or apn.mnc is wrong"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/iflytek/yd/system/APNType;->Wap:Lcom/iflytek/yd/system/APNType;

    if-ne v1, p2, :cond_4

    invoke-direct {p0, p1}, Lcom/iflytek/yd/system/ApnManager;->isWapApnTrue(Lcom/iflytek/yd/system/APNEntity;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    sget-object v1, Lcom/iflytek/yd/system/APNType;->Net:Lcom/iflytek/yd/system/APNType;

    if-ne v1, p2, :cond_5

    invoke-direct {p0, p1}, Lcom/iflytek/yd/system/ApnManager;->isNetApnTrue(Lcom/iflytek/yd/system/APNEntity;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/iflytek/yd/system/ApnManager;->isNetApnTrue(Lcom/iflytek/yd/system/APNEntity;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Lcom/iflytek/yd/system/ApnManager;->isWapApnTrue(Lcom/iflytek/yd/system/APNEntity;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAPNType()Lcom/iflytek/yd/system/ApnAccessorType;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/yd/system/ApnManager;->getDefaultAPN()Lcom/iflytek/yd/system/APNEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getApn()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/iflytek/yd/system/ApnAccessorType;->UNKNOWN:Lcom/iflytek/yd/system/ApnAccessorType;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getApn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/iflytek/yd/system/ApnAccessorType;->WIFI:Lcom/iflytek/yd/system/ApnAccessorType;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/iflytek/yd/system/a;->a:[I

    iget-object v2, p0, Lcom/iflytek/yd/system/ApnManager;->mSimType:Lcom/iflytek/yd/system/SimType;

    invoke-virtual {v2}, Lcom/iflytek/yd/system/SimType;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/iflytek/yd/system/ApnAccessorType;->UNKNOWN:Lcom/iflytek/yd/system/ApnAccessorType;

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/iflytek/yd/system/ApnManager;->isWapApn(Lcom/iflytek/yd/system/APNEntity;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iflytek/yd/system/ApnAccessorType;->CMWAP:Lcom/iflytek/yd/system/ApnAccessorType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/iflytek/yd/system/ApnAccessorType;->CMNET:Lcom/iflytek/yd/system/ApnAccessorType;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/iflytek/yd/system/ApnManager;->isWapApn(Lcom/iflytek/yd/system/APNEntity;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/iflytek/yd/system/ApnAccessorType;->UNIWAP:Lcom/iflytek/yd/system/ApnAccessorType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/iflytek/yd/system/ApnAccessorType;->UNINET:Lcom/iflytek/yd/system/ApnAccessorType;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/iflytek/yd/system/ApnManager;->isWapApn(Lcom/iflytek/yd/system/APNEntity;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/iflytek/yd/system/ApnAccessorType;->CTWAP:Lcom/iflytek/yd/system/ApnAccessorType;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/iflytek/yd/system/ApnAccessorType;->CTNET:Lcom/iflytek/yd/system/ApnAccessorType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ApnManager"

    const-string/jumbo v2, "getAPNType error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDefaultAPN()Lcom/iflytek/yd/system/APNEntity;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    new-instance v1, Lcom/iflytek/yd/system/APNEntity;

    invoke-direct {v1}, Lcom/iflytek/yd/system/APNEntity;-><init>()V

    iput-object v1, p0, Lcom/iflytek/yd/system/ApnManager;->mApnEntity:Lcom/iflytek/yd/system/APNEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mApnEntity:Lcom/iflytek/yd/system/APNEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/system/APNEntity;->setApn(Ljava/lang/String;)V

    const-string/jumbo v0, "ApnManager"

    const-string/jumbo v1, "getDefaultAPN | network info is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mApnEntity:Lcom/iflytek/yd/system/APNEntity;

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mApnEntity:Lcom/iflytek/yd/system/APNEntity;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/system/APNEntity;->setApn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ApnManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/iflytek/yd/system/ApnManager;->mApnEntity:Lcom/iflytek/yd/system/APNEntity;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/system/APNEntity;->setApn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mApnEntity:Lcom/iflytek/yd/system/APNEntity;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/system/APNEntity;->setProxy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mApnEntity:Lcom/iflytek/yd/system/APNEntity;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/system/APNEntity;->setPort(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/yd/system/ApnManager;->mApnEntity:Lcom/iflytek/yd/system/APNEntity;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/system/ApnManager;->correctApn(Lcom/iflytek/yd/system/APNEntity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public isWapApn(Lcom/iflytek/yd/system/APNEntity;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getProxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/yd/system/APNEntity;->getMmsProxy()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
