.class Lcom/iflytek/viafly/call/CallBusinessManager$2;
.super Ljava/lang/Object;
.source "CallBusinessManager.java"

# interfaces
.implements Lod$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/call/CallBusinessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/call/CallBusinessManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/call/CallBusinessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 933
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$2;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 936
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$2;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->d(Lcom/iflytek/viafly/call/CallBusinessManager;)I

    .line 938
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$2;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->e(Lcom/iflytek/viafly/call/CallBusinessManager;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$2;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->f(Lcom/iflytek/viafly/call/CallBusinessManager;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 939
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "onCompleted unfinished, start another"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$2;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->g(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager$2;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->h(Lcom/iflytek/viafly/call/CallBusinessManager;)Lod$a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;Lod$a;)V

    .line 946
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$2;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->i(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    .line 943
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "onCompleted finished"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$2;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->j(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$2;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->k(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    .line 951
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$2;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->j(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    .line 952
    return-void
.end method
