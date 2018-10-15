.class Lex$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lex;


# direct methods
.method private constructor <init>(Lex;)V
    .locals 0

    iput-object p1, p0, Lex$b;->a:Lex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lex;Lex$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lex$b;-><init>(Lex;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lex$b;->a:Lex;

    invoke-static {v0}, Lex;->a(Lex;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lex$b;->a:Lex;

    invoke-static {v0}, Lex;->b(Lex;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/e/e;->a()Lcom/baidu/location/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ley;

    invoke-direct {v0, p0}, Ley;-><init>(Lex$b;)V

    invoke-virtual {v0}, Ley;->start()V

    :cond_1
    iget-object v0, p0, Lex$b;->a:Lex;

    invoke-static {v0}, Lex;->b(Lex;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/e/e;->a()Lcom/baidu/location/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->d()V

    :cond_2
    iget-object v0, p0, Lex$b;->a:Lex;

    invoke-static {v0}, Lex;->b(Lex;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lex$b;->a:Lex;

    invoke-static {v0}, Lex;->a(Lex;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lex$b;->a:Lex;

    iget-object v0, v0, Lex;->a:Landroid/os/Handler;

    sget v1, Ldp;->N:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lex$b;->a:Lex;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lex;->a(Lex;Z)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lex$b;->a:Lex;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lex;->a(Lex;Z)Z

    goto :goto_0
.end method
