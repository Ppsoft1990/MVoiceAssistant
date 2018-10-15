.class Lcom/migu/a/c/b$5;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/migu/a/c/b;->a(Lcom/migu/a/c/a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic au:Lcom/migu/a/c/b;

.field private final synthetic av:Lcom/migu/a/c/a;

.field private final synthetic aw:Ljava/lang/Runnable;

.field private final synthetic ax:Ljava/lang/Runnable;

.field private final synthetic ay:J


# direct methods
.method constructor <init>(Lcom/migu/a/c/b;Ljava/lang/Runnable;JLcom/migu/a/c/a;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/migu/a/c/b$5;->au:Lcom/migu/a/c/b;

    iput-object p2, p0, Lcom/migu/a/c/b$5;->ax:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/migu/a/c/b$5;->ay:J

    iput-object p5, p0, Lcom/migu/a/c/b$5;->av:Lcom/migu/a/c/a;

    iput-object p6, p0, Lcom/migu/a/c/b$5;->aw:Ljava/lang/Runnable;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/migu/a/c/b$5;->au:Lcom/migu/a/c/b;

    invoke-static {v0}, Lcom/migu/a/c/b;->a(Lcom/migu/a/c/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/a/c/b$5;->ax:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/migu/a/c/b$5;->ay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    iget-object v0, p0, Lcom/migu/a/c/b$5;->au:Lcom/migu/a/c/b;

    new-instance v1, Lcom/migu/a/c/e;

    iget-object v2, p0, Lcom/migu/a/c/b$5;->av:Lcom/migu/a/c/a;

    invoke-virtual {v2}, Lcom/migu/a/c/a;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/migu/a/c/b$5;->av:Lcom/migu/a/c/a;

    invoke-virtual {v3}, Lcom/migu/a/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/migu/a/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/migu/a/c/b;->a(Lcom/migu/a/c/b;Lcom/migu/a/c/e;)V

    .line 144
    iget-object v0, p0, Lcom/migu/a/c/b$5;->av:Lcom/migu/a/c/a;

    iget-object v1, p0, Lcom/migu/a/c/b$5;->au:Lcom/migu/a/c/b;

    invoke-static {v1}, Lcom/migu/a/c/b;->b(Lcom/migu/a/c/b;)Lcom/migu/a/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/a/c/a;->a(Lcom/migu/a/c/e;)V

    .line 145
    iget-object v0, p0, Lcom/migu/a/c/b$5;->av:Lcom/migu/a/c/a;

    invoke-virtual {v0}, Lcom/migu/a/c/a;->A()V

    .line 146
    iget-object v0, p0, Lcom/migu/a/c/b$5;->au:Lcom/migu/a/c/b;

    invoke-static {v0}, Lcom/migu/a/c/b;->a(Lcom/migu/a/c/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/a/c/b$5;->ax:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v0, p0, Lcom/migu/a/c/b$5;->au:Lcom/migu/a/c/b;

    invoke-static {v0}, Lcom/migu/a/c/b;->a(Lcom/migu/a/c/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/a/c/b$5;->aw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method
