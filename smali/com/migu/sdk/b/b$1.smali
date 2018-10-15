.class Lcom/migu/sdk/b/b$1;
.super Ljava/lang/Thread;
.source "NetRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/migu/sdk/b/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/migu/sdk/b/b;


# direct methods
.method constructor <init>(Lcom/migu/sdk/b/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/migu/sdk/b/b$1;->m:Lcom/migu/sdk/b/b;

    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/migu/sdk/b/b$1;->m:Lcom/migu/sdk/b/b;

    invoke-virtual {v0}, Lcom/migu/sdk/b/b;->C()V

    .line 56
    return-void
.end method
