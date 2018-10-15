.class final Lcom/migu/uem/a/a/e;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/migu/uem/a/a/d;


# direct methods
.method constructor <init>(Lcom/migu/uem/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/a/a/e;->a:Lcom/migu/uem/a/a/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/migu/uem/a/d/a/c;

    iget-object v1, p0, Lcom/migu/uem/a/a/e;->a:Lcom/migu/uem/a/a/d;

    invoke-static {v1}, Lcom/migu/uem/a/a/d;->a(Lcom/migu/uem/a/a/d;)Lcom/migu/uem/c/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/migu/uem/a/d/a/c;-><init>(Lcom/migu/uem/c/b;)V

    invoke-virtual {v0}, Lcom/migu/uem/a/d/a/c;->b()V

    return-void
.end method
