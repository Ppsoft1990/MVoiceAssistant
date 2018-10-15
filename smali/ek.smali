.class Lek;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lej$a;


# direct methods
.method constructor <init>(Lej$a;)V
    .locals 0

    iput-object p1, p0, Lek;->a:Lej$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lek;->a:Lej$a;

    invoke-static {v0}, Lej$a;->c(Lej$a;)Lej;

    move-result-object v0

    iget-object v1, p0, Lek;->a:Lej$a;

    invoke-static {v1}, Lej$a;->b(Lej$a;)Z

    move-result v1

    invoke-static {v0, v1}, Lej;->a(Lej;Z)V

    return-void
.end method
