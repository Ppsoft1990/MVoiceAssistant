.class public Lcom/migu/uem/bean/AccountInfo;
.super Ljava/lang/Object;


# instance fields
.field private account:Ljava/lang/String;

.field private mType:Lcom/migu/uem/statistics/other/ULoginType;

.field private sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->UNKNOWN:Lcom/migu/uem/statistics/other/ULoginType;

    iput-object v0, p0, Lcom/migu/uem/bean/AccountInfo;->mType:Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/uem/bean/AccountInfo;->sdkVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/migu/uem/bean/AccountInfo;->account:Ljava/lang/String;

    iput-object p2, p0, Lcom/migu/uem/bean/AccountInfo;->mType:Lcom/migu/uem/statistics/other/ULoginType;

    iput-object p3, p0, Lcom/migu/uem/bean/AccountInfo;->sdkVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/uem/bean/AccountInfo;->sdkVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/uem/bean/AccountInfo;->sdkVersion:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/AccountInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/AccountInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/migu/uem/statistics/other/ULoginType;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/AccountInfo;->mType:Lcom/migu/uem/statistics/other/ULoginType;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/AccountInfo;->account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/bean/AccountInfo;->sdkVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "UAC"

    iget-object v2, p0, Lcom/migu/uem/bean/AccountInfo;->account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "UACTP"

    iget-object v2, p0, Lcom/migu/uem/bean/AccountInfo;->mType:Lcom/migu/uem/statistics/other/ULoginType;

    invoke-virtual {v2}, Lcom/migu/uem/statistics/other/ULoginType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "TSDKV"

    iget-object v2, p0, Lcom/migu/uem/bean/AccountInfo;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method
