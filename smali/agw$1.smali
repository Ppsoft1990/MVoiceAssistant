.class Lagw$1;
.super Ljava/lang/Object;
.source "HomeBlcHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagw;->b(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lagw;


# direct methods
.method constructor <init>(Lagw;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lagw;

    .prologue
    .line 97
    iput-object p1, p0, Lagw$1;->b:Lagw;

    iput-object p2, p0, Lagw$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    const-string/jumbo v0, "HomeBlcHelper"

    const-string/jumbo v1, "intentProcess() intentAppendOpLog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lagw$1;->b:Lagw;

    invoke-virtual {v0}, Lagw;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v0

    iget-object v1, p0, Lagw$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lxb;->a(Landroid/content/Intent;)V

    .line 102
    return-void
.end method
