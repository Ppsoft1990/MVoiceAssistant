.class public final Lcom/migu/uem/statistics/other/AuthAgent;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authInfoChange(Landroid/content/Context;Ljava/lang/String;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/migu/uem/statistics/other/a;

    invoke-direct {v0}, Lcom/migu/uem/statistics/other/a;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/migu/uem/a/a;->a()Lcom/migu/uem/a/a;

    move-result-object v0

    new-instance v1, Lcom/migu/uem/statistics/other/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1, p3}, Lcom/migu/uem/statistics/other/b;-><init>(Landroid/content/Context;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/migu/uem/a/a;->a(Lcom/migu/uem/a/f;)Z

    goto :goto_0
.end method

.method public static cancelAuth(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/migu/uem/statistics/other/a;

    invoke-direct {v0}, Lcom/migu/uem/statistics/other/a;-><init>()V

    invoke-static {p0}, Lcom/migu/uem/statistics/other/a;->a(Landroid/content/Context;)V

    return-void
.end method
