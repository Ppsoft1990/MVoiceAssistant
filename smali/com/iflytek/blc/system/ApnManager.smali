.class public Lcom/iflytek/blc/system/ApnManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/blc/system/SimType;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/iflytek/blc/system/SimInfoManager;

.field private f:Lcom/iflytek/blc/system/APNEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/blc/system/SimInfoManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/blc/system/ApnManager;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/blc/system/ApnManager;->e:Lcom/iflytek/blc/system/SimInfoManager;

    iget-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->e:Lcom/iflytek/blc/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/blc/system/SimInfoManager;->getSimType()Lcom/iflytek/blc/system/SimType;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->b:Lcom/iflytek/blc/system/SimType;

    iget-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->e:Lcom/iflytek/blc/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/blc/system/SimInfoManager;->getMCCNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->e:Lcom/iflytek/blc/system/SimInfoManager;

    invoke-virtual {v0}, Lcom/iflytek/blc/system/SimInfoManager;->getMNCNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/iflytek/blc/system/APNEntity;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/iflytek/blc/system/ApnManager;->isWapApn(Lcom/iflytek/blc/system/APNEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getProxy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getMmsProxy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getMmsPort()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/iflytek/blc/system/ApnManager$1;->a:[I

    iget-object v6, p0, Lcom/iflytek/blc/system/ApnManager;->b:Lcom/iflytek/blc/system/SimType;

    invoke-virtual {v6}, Lcom/iflytek/blc/system/SimType;->ordinal()I

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
    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getPassword()Ljava/lang/String;

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

.method private b(Lcom/iflytek/blc/system/APNEntity;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/iflytek/blc/system/ApnManager;->isWapApn(Lcom/iflytek/blc/system/APNEntity;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/iflytek/blc/system/ApnManager;->b:Lcom/iflytek/blc/system/SimType;

    sget-object v3, Lcom/iflytek/blc/system/SimType;->China_Telecom:Lcom/iflytek/blc/system/SimType;

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getPassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getPassword()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public checkAPNisTrue(Lcom/iflytek/blc/system/APNEntity;Lcom/iflytek/blc/system/APNType;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v1, "ApnManager"

    const-string/jumbo v2, "checkAPNisTrue false,apn is null"

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/blc/system/ApnManager;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getMcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/blc/system/ApnManager;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "ApnManager"

    const-string/jumbo v2, "checkAPNisTrue false, apn.mcc or apn.mnc is wrong"

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/iflytek/blc/system/APNType;->Wap:Lcom/iflytek/blc/system/APNType;

    if-ne v1, p2, :cond_4

    invoke-direct {p0, p1}, Lcom/iflytek/blc/system/ApnManager;->a(Lcom/iflytek/blc/system/APNEntity;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    sget-object v1, Lcom/iflytek/blc/system/APNType;->Net:Lcom/iflytek/blc/system/APNType;

    if-ne v1, p2, :cond_5

    invoke-direct {p0, p1}, Lcom/iflytek/blc/system/ApnManager;->b(Lcom/iflytek/blc/system/APNEntity;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/iflytek/blc/system/ApnManager;->b(Lcom/iflytek/blc/system/APNEntity;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Lcom/iflytek/blc/system/ApnManager;->a(Lcom/iflytek/blc/system/APNEntity;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAPNType()Lcom/iflytek/blc/system/ApnAccessorType;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/blc/system/ApnManager;->getDefaultAPN()Lcom/iflytek/blc/system/APNEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/iflytek/blc/system/ApnManager$1;->a:[I

    iget-object v2, p0, Lcom/iflytek/blc/system/ApnManager;->b:Lcom/iflytek/blc/system/SimType;

    invoke-virtual {v2}, Lcom/iflytek/blc/system/SimType;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->WIFI:Lcom/iflytek/blc/system/ApnAccessorType;

    :goto_1
    return-object v0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/iflytek/blc/system/ApnManager;->isWapApn(Lcom/iflytek/blc/system/APNEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->CMWAP:Lcom/iflytek/blc/system/ApnAccessorType;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->CMNET:Lcom/iflytek/blc/system/ApnAccessorType;

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/iflytek/blc/system/ApnManager;->isWapApn(Lcom/iflytek/blc/system/APNEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->UNIWAP:Lcom/iflytek/blc/system/ApnAccessorType;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->UNINET:Lcom/iflytek/blc/system/ApnAccessorType;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/iflytek/blc/system/ApnManager;->isWapApn(Lcom/iflytek/blc/system/APNEntity;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->CTWAP:Lcom/iflytek/blc/system/ApnAccessorType;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->CTNET:Lcom/iflytek/blc/system/ApnAccessorType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ApnManager"

    const-string/jumbo v2, "getAPNType error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/blc/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDefaultAPN()Lcom/iflytek/blc/system/APNEntity;
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->a:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    new-instance v2, Lcom/iflytek/blc/system/APNEntity;

    invoke-direct {v2}, Lcom/iflytek/blc/system/APNEntity;-><init>()V

    iput-object v2, p0, Lcom/iflytek/blc/system/ApnManager;->f:Lcom/iflytek/blc/system/APNEntity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "ApnManager"

    const-string/jumbo v1, "getDefaultAPN | network info is null"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->f:Lcom/iflytek/blc/system/APNEntity;

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->f:Lcom/iflytek/blc/system/APNEntity;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/system/APNEntity;->setApn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ApnManager"

    const-string/jumbo v2, "getDefaultAPN | error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/iflytek/blc/system/ApnManager;->f:Lcom/iflytek/blc/system/APNEntity;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/iflytek/blc/system/APNEntity;->setApn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->f:Lcom/iflytek/blc/system/APNEntity;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/blc/system/APNEntity;->setProxy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/blc/system/ApnManager;->f:Lcom/iflytek/blc/system/APNEntity;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/blc/system/APNEntity;->setPort(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/blc/system/ApnManager;->f:Lcom/iflytek/blc/system/APNEntity;

    invoke-virtual {v2}, Lcom/iflytek/blc/system/APNEntity;->getApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "3gwap"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "3gnet"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "uniwap"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "uninet"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "cmwap"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "cmnet"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "ctwap"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "ctnet"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    :cond_4
    sget-object v0, Lcom/iflytek/blc/system/ApnManager$1;->a:[I

    iget-object v1, p0, Lcom/iflytek/blc/system/ApnManager;->b:Lcom/iflytek/blc/system/SimType;

    invoke-virtual {v1}, Lcom/iflytek/blc/system/SimType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    if-nez v3, :cond_0

    const-string/jumbo v0, "10.0.0.200"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "010.000.000.200"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    const-string/jumbo v0, "ctwap"

    invoke-virtual {v2, v0}, Lcom/iflytek/blc/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :pswitch_0
    if-nez v3, :cond_7

    const-string/jumbo v0, "cmnet"

    invoke-virtual {v2, v0}, Lcom/iflytek/blc/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "cmwap"

    invoke-virtual {v2, v0}, Lcom/iflytek/blc/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    if-nez v3, :cond_8

    const-string/jumbo v0, "3gnet"

    invoke-virtual {v2, v0}, Lcom/iflytek/blc/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "3gwap"

    invoke-virtual {v2, v0}, Lcom/iflytek/blc/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    if-nez v3, :cond_9

    const-string/jumbo v0, "ctnet"

    invoke-virtual {v2, v0}, Lcom/iflytek/blc/system/APNEntity;->setApn(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "ctwap"

    invoke-virtual {v2, v0}, Lcom/iflytek/blc/system/APNEntity;->setApn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isWapApn(Lcom/iflytek/blc/system/APNEntity;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getProxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/blc/system/APNEntity;->getMmsProxy()Ljava/lang/String;

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
