.class public final Lcom/migu/uem/statistics/page/PageAgent;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fragmentEnd(Landroid/support/v4/app/Fragment;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/migu/uem/statistics/page/b;->a()Lcom/migu/uem/statistics/page/b;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/uem/statistics/page/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final fragmentStart(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/migu/uem/statistics/page/b;->a()Lcom/migu/uem/statistics/page/b;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/migu/uem/statistics/page/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final onPause(Landroid/app/Activity;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/migu/uem/statistics/page/b;->a()Lcom/migu/uem/statistics/page/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/b;->b()V

    goto :goto_0
.end method

.method public static final onResume(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/migu/uem/statistics/page/PageAgent;->onResume(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static final onResume(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/migu/uem/statistics/page/b;->a()Lcom/migu/uem/statistics/page/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/migu/uem/statistics/page/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
