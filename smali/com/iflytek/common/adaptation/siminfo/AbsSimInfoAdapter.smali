.class public abstract Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
.super Ljava/lang/Object;
.source "AbsSimInfoAdapter.java"

# interfaces
.implements Lcom/iflytek/common/adaptation/ISimInfoAdaptation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detect()Z
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 35
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v3}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "firstImsi":Ljava/lang/String;
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v3}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "secondImsi":Ljava/lang/String;
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v3}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v3

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 38
    invoke-virtual {p0, v3}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v2

    .line 41
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getOpenDataSimCard()Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    return-object v0
.end method

.method public getSystemCallSetting()Lcom/iflytek/common/adaptation/entity/SystemSettings;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;->first:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    return-object v0
.end method

.method public getSystemSmsSetting()Lcom/iflytek/common/adaptation/entity/SystemSettings;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;->first:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    return-object v0
.end method

.method public isSameAsSystemSettings()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
