.class public abstract Lvn;
.super Ljava/lang/Object;
.source "AbsBlcAdapter.java"

# interfaces
.implements Lyn;


# instance fields
.field protected a:Lyo;

.field protected b:Lhl;

.field protected c:Landroid/content/Context;

.field protected d:Lcom/iflytek/yd/http/interfaces/HttpContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lvn$1;

    invoke-direct {v0, p0}, Lvn$1;-><init>(Lvn;)V

    iput-object v0, p0, Lvn;->d:Lcom/iflytek/yd/http/interfaces/HttpContext;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lvn;->c:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lvn;->c:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iput-object v0, p0, Lvn;->b:Lhl;

    .line 31
    iget-object v0, p0, Lvn;->b:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    const-string/jumbo v1, "108ViaFly"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/business/AppConfig;->setBlcAppId(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lvn;->d:Lcom/iflytek/yd/http/interfaces/HttpContext;

    iget-object v1, p0, Lvn;->b:Lhl;

    .line 33
    invoke-virtual {v1}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v1

    invoke-virtual {p0}, Lvn;->a()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {p0, v0, v1, v2}, Lxv;->a(Lyn;Lcom/iflytek/yd/http/interfaces/HttpContext;Lcom/iflytek/yd/business/AppConfig;Ljava/lang/String;)Lyo;

    move-result-object v0

    iput-object v0, p0, Lvn;->a:Lyo;

    .line 34
    return-void
.end method
