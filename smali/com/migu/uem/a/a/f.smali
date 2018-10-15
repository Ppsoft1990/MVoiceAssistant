.class public final Lcom/migu/uem/a/a/f;
.super Lcom/migu/uem/a/f;


# instance fields
.field private b:Lcom/migu/uem/a/d/a;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/migu/uem/a/d/a;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/migu/uem/a/f;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/migu/uem/a/a/f;->d:Ljava/lang/String;

    iput p2, p0, Lcom/migu/uem/a/a/f;->c:I

    iput-object p3, p0, Lcom/migu/uem/a/a/f;->b:Lcom/migu/uem/a/d/a;

    and-int/lit8 v0, p2, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/migu/uem/a/a/f;->d:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, p2, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/migu/uem/a/a/f;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "3"

    iput-object v0, p0, Lcom/migu/uem/a/a/f;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    new-instance v2, Lcom/migu/uem/c/b;

    sget-object v0, Lcom/migu/uem/comm/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/migu/uem/a/a/f;->b:Lcom/migu/uem/a/d/a;

    sget-object v3, Lcom/migu/uem/a/d/b;->a:Lcom/migu/uem/a/d/b;

    iget-object v4, p0, Lcom/migu/uem/a/a/f;->d:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/migu/uem/c/b;-><init>(Ljava/lang/String;Lcom/migu/uem/a/d/a;Lcom/migu/uem/a/d/b;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/uem/a/a/f;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "keyValue"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/migu/uem/c/h;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/migu/uem/a/a/f;->b:Lcom/migu/uem/a/d/a;

    const/4 v1, -0x1

    const-string/jumbo v3, "appKey is null"

    invoke-interface {v0, v1, v3, v2}, Lcom/migu/uem/a/d/a;->a(ILjava/lang/String;Lcom/migu/uem/c/b;)V

    :goto_1
    return-void

    :cond_2
    invoke-static {v0}, Lcom/migu/uem/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/migu/uem/a/a/a;->a()Lcom/migu/uem/a/a/a;

    invoke-virtual {p0}, Lcom/migu/uem/a/a/f;->b()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/migu/uem/a/a/f;->c:I

    invoke-static {v3, v4}, Lcom/migu/uem/a/a/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/migu/uem/c/b;->a(J)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/migu/uem/a/a/f;->b:Lcom/migu/uem/a/d/a;

    const/4 v1, -0x2

    const-string/jumbo v3, "upload data json is empty"

    invoke-interface {v0, v1, v3, v2}, Lcom/migu/uem/a/d/a;->a(ILjava/lang/String;Lcom/migu/uem/c/b;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "AppInstallList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/migu/uem/c/b;->a(Ljava/lang/Object;)V

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "url = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/migu/uem/comm/e;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "upload data = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "2.3.0"

    invoke-static {v4, v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "appKey"

    invoke-virtual {v2, v4, v1}, Lcom/migu/uem/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "data"

    invoke-virtual {v2, v1, v3}, Lcom/migu/uem/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    invoke-virtual {v2, v1, v0}, Lcom/migu/uem/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/migu/uem/a/d/a/c;

    invoke-direct {v0, v2}, Lcom/migu/uem/a/d/a/c;-><init>(Lcom/migu/uem/c/b;)V

    invoke-virtual {v0}, Lcom/migu/uem/a/d/a/c;->b()V

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/migu/uem/c/b;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method
