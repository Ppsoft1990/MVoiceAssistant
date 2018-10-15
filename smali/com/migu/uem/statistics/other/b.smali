.class final Lcom/migu/uem/statistics/other/b;
.super Lcom/migu/uem/a/f;


# instance fields
.field private synthetic b:Lcom/migu/uem/statistics/other/ULoginType;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/migu/uem/statistics/other/b;->b:Lcom/migu/uem/statistics/other/ULoginType;

    iput-object p3, p0, Lcom/migu/uem/statistics/other/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/migu/uem/statistics/other/b;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/migu/uem/a/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
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
    iget-object v0, p0, Lcom/migu/uem/statistics/other/b;->b:Lcom/migu/uem/statistics/other/ULoginType;

    iget-object v1, p0, Lcom/migu/uem/statistics/other/b;->b:Lcom/migu/uem/statistics/other/ULoginType;

    sget-object v2, Lcom/migu/uem/statistics/other/ULoginType;->PHONE:Lcom/migu/uem/statistics/other/ULoginType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/migu/uem/statistics/other/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->PHONE:Lcom/migu/uem/statistics/other/ULoginType;

    :cond_1
    :goto_1
    new-instance v1, Lcom/migu/uem/bean/AccountInfo;

    iget-object v2, p0, Lcom/migu/uem/statistics/other/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/migu/uem/statistics/other/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/migu/uem/bean/AccountInfo;-><init>(Ljava/lang/String;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/uem/statistics/other/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v2, 0x328

    invoke-virtual {v0, v2}, Lcom/migu/uem/statistics/deeplink/a;->a(I)V

    invoke-virtual {v1}, Lcom/migu/uem/bean/AccountInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "auth info:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/migu/uem/bean/AccountInfo;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/uem/statistics/other/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v2, 0x328

    invoke-virtual {v1}, Lcom/migu/uem/bean/AccountInfo;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/migu/uem/statistics/deeplink/a;->a(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/migu/uem/statistics/other/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/statistics/other/a;->c(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/migu/uem/statistics/other/b;->b:Lcom/migu/uem/statistics/other/ULoginType;

    sget-object v2, Lcom/migu/uem/statistics/other/ULoginType;->EMAIL:Lcom/migu/uem/statistics/other/ULoginType;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/migu/uem/statistics/other/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->EMAIL:Lcom/migu/uem/statistics/other/ULoginType;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/migu/uem/statistics/other/b;->b:Lcom/migu/uem/statistics/other/ULoginType;

    sget-object v2, Lcom/migu/uem/statistics/other/ULoginType;->PHONE:Lcom/migu/uem/statistics/other/ULoginType;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/migu/uem/statistics/other/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/migu/uem/statistics/other/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->EMAIL:Lcom/migu/uem/statistics/other/ULoginType;

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->USER_NAME:Lcom/migu/uem/statistics/other/ULoginType;

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/migu/uem/statistics/other/b;->b:Lcom/migu/uem/statistics/other/ULoginType;

    sget-object v2, Lcom/migu/uem/statistics/other/ULoginType;->EMAIL:Lcom/migu/uem/statistics/other/ULoginType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/migu/uem/statistics/other/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/migu/uem/statistics/other/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->PHONE:Lcom/migu/uem/statistics/other/ULoginType;

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->USER_NAME:Lcom/migu/uem/statistics/other/ULoginType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method
