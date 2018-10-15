.class public final Lcom/migu/uem/statistics/other/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/comm/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u6ca1\u6709\u8c03\u7528SDK\u521d\u59cb\u5316"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v1, 0x328

    invoke-virtual {v0, v1}, Lcom/migu/uem/statistics/deeplink/a;->a(I)V

    invoke-static {p0}, Lcom/migu/uem/statistics/other/a;->d(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/migu/uem/bean/AccountInfo;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v1, 0x328

    invoke-virtual {v0, v1}, Lcom/migu/uem/statistics/deeplink/a;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/migu/uem/bean/AccountInfo;

    const-string/jumbo v2, "UAC"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UACTP"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/migu/uem/statistics/other/ULoginType;->getType(I)Lcom/migu/uem/statistics/other/ULoginType;

    move-result-object v3

    const-string/jumbo v4, "TSDKV"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/migu/uem/bean/AccountInfo;-><init>(Ljava/lang/String;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/migu/uem/bean/AccountInfo;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/migu/uem/statistics/other/a;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.migu.uem.noti_to_remote"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "noti_romote_key_id"

    const/16 v3, 0x4ae

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
