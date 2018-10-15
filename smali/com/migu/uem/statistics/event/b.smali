.class final Lcom/migu/uem/statistics/event/b;
.super Lcom/migu/uem/a/f;


# instance fields
.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/migu/uem/statistics/event/bean/Action;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/migu/uem/statistics/event/bean/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/statistics/event/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/migu/uem/statistics/event/b;->c:Lcom/migu/uem/statistics/event/bean/Action;

    invoke-direct {p0}, Lcom/migu/uem/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/16 v5, 0x194

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/migu/uem/statistics/event/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/statistics/event/b;->c:Lcom/migu/uem/statistics/event/bean/Action;

    invoke-virtual {v1}, Lcom/migu/uem/statistics/event/bean/Action;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/migu/uem/statistics/deeplink/a;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/migu/uem/c/d;

    invoke-direct {v0}, Lcom/migu/uem/c/d;-><init>()V

    iget-object v1, p0, Lcom/migu/uem/statistics/event/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/migu/uem/c/d;->e(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Lcom/migu/uem/c/d;

    invoke-direct {v1}, Lcom/migu/uem/c/d;-><init>()V

    iget-object v2, p0, Lcom/migu/uem/statistics/event/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/migu/uem/c/d;->a(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Lcom/migu/uem/c/d;

    invoke-direct {v2}, Lcom/migu/uem/c/d;-><init>()V

    iget-object v3, p0, Lcom/migu/uem/statistics/event/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/migu/uem/c/d;->c(Landroid/content/Context;)I

    move-result v2

    if-eqz v0, :cond_0

    if-ne v4, v1, :cond_0

    if-ne v2, v4, :cond_0

    iget-object v1, p0, Lcom/migu/uem/statistics/event/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/migu/uem/statistics/deeplink/a;->c(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4e8b\u4ef6\u8bbf\u95ee\u6570\u636e\u91cf\u89e6\u53d1\u9608\u503c "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/statistics/event/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/statistics/event/a;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
