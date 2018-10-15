.class Lcom/migu/a/c/b$3;
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


# direct methods
.method constructor <init>(Lcom/migu/a/c/b;Lcom/migu/a/c/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/migu/a/c/b$3;->au:Lcom/migu/a/c/b;

    iput-object p2, p0, Lcom/migu/a/c/b$3;->av:Lcom/migu/a/c/a;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/migu/a/c/b$3;->av:Lcom/migu/a/c/a;

    invoke-virtual {v0}, Lcom/migu/a/c/a;->B()V

    .line 130
    return-void
.end method
