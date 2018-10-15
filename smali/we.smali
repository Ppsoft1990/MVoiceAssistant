.class public Lwe;
.super Ljava/lang/Object;
.source "UnikeyRequestHelper.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "uuid":Ljava/lang/String;
    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0}, Lhl;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {p0}, Lwe;->b(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "UnikeyRequestHelper \uff1a china unicom data network"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string/jumbo v5, "connectivity"

    .line 46
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 47
    .local v1, "cm":Landroid/net/ConnectivityManager;
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->UNKOWN:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 48
    .local v3, "operatorType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 50
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_0

    move-object v4, v3

    .line 86
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    .end local v3    # "operatorType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    .local v4, "operatorType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    :goto_0
    return-object v4

    .line 53
    .end local v4    # "operatorType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v3    # "operatorType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v5, "3gnet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 59
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 82
    :cond_1
    :goto_1
    const-string/jumbo v5, "ViaFly_BusinessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UnikeyRequestHelper\uff1a\u5f53\u524d\u7f51\u7edc\u4e3a : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "apnType":Ljava/lang/String;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_2
    move-object v4, v3

    .line 86
    .end local v3    # "operatorType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    .restart local v4    # "operatorType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    goto :goto_0

    .line 60
    .end local v4    # "operatorType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    .restart local v0    # "apnType":Ljava/lang/String;
    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v3    # "operatorType":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    :cond_3
    const-string/jumbo v5, "3gwap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 61
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_1

    .line 62
    :cond_4
    const-string/jumbo v5, "uniwap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 63
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_1

    .line 64
    :cond_5
    const-string/jumbo v5, "uninet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 65
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_1

    .line 66
    :cond_6
    const-string/jumbo v5, "wonet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 67
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_1

    .line 68
    :cond_7
    const-string/jumbo v5, "cmnet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 69
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_1

    .line 70
    :cond_8
    const-string/jumbo v5, "cmwap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 71
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_1

    .line 72
    :cond_9
    const-string/jumbo v5, "cmlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 73
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_1

    .line 74
    :cond_a
    const-string/jumbo v5, "ctnet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 75
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto :goto_1

    .line 76
    :cond_b
    const-string/jumbo v5, "ctwap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 77
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto/16 :goto_1

    .line 78
    :cond_c
    const-string/jumbo v5, "ctlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    sget-object v3, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    goto/16 :goto_1
.end method
