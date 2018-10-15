.class final Lcom/migu/uem/statistics/aplist/b;
.super Lcom/migu/uem/a/f;


# instance fields
.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/migu/uem/statistics/aplist/a;


# direct methods
.method constructor <init>(Lcom/migu/uem/statistics/aplist/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/statistics/aplist/b;->c:Lcom/migu/uem/statistics/aplist/a;

    iput-object p2, p0, Lcom/migu/uem/statistics/aplist/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/migu/uem/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/migu/uem/statistics/aplist/b;->c:Lcom/migu/uem/statistics/aplist/a;

    iget-object v1, p0, Lcom/migu/uem/statistics/aplist/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/migu/uem/statistics/aplist/a;->a(Lcom/migu/uem/statistics/aplist/a;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/migu/uem/statistics/aplist/b;->c:Lcom/migu/uem/statistics/aplist/a;

    iget-object v1, p0, Lcom/migu/uem/statistics/aplist/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/migu/uem/statistics/aplist/a;->b(Lcom/migu/uem/statistics/aplist/a;Landroid/content/Context;)V

    return-void
.end method
