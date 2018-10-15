.class Lcom/migu/a/c/b$4;
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


# direct methods
.method constructor <init>(Lcom/migu/a/c/b;Lcom/migu/a/c/a;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/migu/a/c/b$4;->au:Lcom/migu/a/c/b;

    iput-object p2, p0, Lcom/migu/a/c/b$4;->av:Lcom/migu/a/c/a;

    iput-object p3, p0, Lcom/migu/a/c/b$4;->aw:Ljava/lang/Runnable;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/migu/a/c/b$4;->av:Lcom/migu/a/c/a;

    invoke-virtual {v0}, Lcom/migu/a/c/a;->D()V

    .line 136
    iget-object v0, p0, Lcom/migu/a/c/b$4;->au:Lcom/migu/a/c/b;

    invoke-static {v0}, Lcom/migu/a/c/b;->a(Lcom/migu/a/c/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/a/c/b$4;->aw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method
