.class Lcom/iflytek/viafly/call/CallBusinessManager$1;
.super Ljava/lang/Object;
.source "CallBusinessManager.java"

# interfaces
.implements Laaj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/viafly/call/CallBusinessManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/call/CallBusinessManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$1;->b:Lcom/iflytek/viafly/call/CallBusinessManager;

    iput-object p2, p0, Lcom/iflytek/viafly/call/CallBusinessManager$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7
    .param p1, "pMaskContent"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 496
    const-string/jumbo v0, "CallBusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sogou net check number :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$1;->b:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$1;->b:Lcom/iflytek/viafly/call/CallBusinessManager;

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$1;->a:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v3, v2

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 501
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$1;->b:Lcom/iflytek/viafly/call/CallBusinessManager;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager;I)I

    .line 503
    const-string/jumbo v0, "CallBusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "check incomming call number. Sogou net result markcontent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v0

    const-string/jumbo v1, "FD01021"

    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager$1;->b:Lcom/iflytek/viafly/call/CallBusinessManager;

    .line 508
    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(Lcom/iflytek/viafly/call/CallBusinessManager;)I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager$1;->b:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v3}, Lcom/iflytek/viafly/call/CallBusinessManager;->c(Lcom/iflytek/viafly/call/CallBusinessManager;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Labu;->a(Ljava/lang/String;II)V

    .line 509
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$1;->b:Lcom/iflytek/viafly/call/CallBusinessManager;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager;I)I

    goto :goto_0
.end method
