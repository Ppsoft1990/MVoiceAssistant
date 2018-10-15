.class final Lcom/migu/uem/a/a/c;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/migu/uem/a/a/b;


# direct methods
.method constructor <init>(Lcom/migu/uem/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/a/a/c;->a:Lcom/migu/uem/a/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/migu/uem/a/d/a/c;

    iget-object v1, p0, Lcom/migu/uem/a/a/c;->a:Lcom/migu/uem/a/a/b;

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->a(Lcom/migu/uem/a/a/b;)Lcom/migu/uem/c/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/migu/uem/a/d/a/c;-><init>(Lcom/migu/uem/c/b;B)V

    invoke-virtual {v0}, Lcom/migu/uem/a/d/a/c;->b()V

    return-void
.end method
