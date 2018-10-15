.class Lvn$1;
.super Ljava/lang/Object;
.source "AbsBlcAdapter.java"

# interfaces
.implements Lcom/iflytek/yd/http/interfaces/HttpContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvn;


# direct methods
.method constructor <init>(Lvn;)V
    .locals 0
    .param p1, "this$0"    # Lvn;

    .prologue
    .line 42
    iput-object p1, p0, Lvn$1;->a:Lvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lvn$1;->a:Lvn;

    iget-object v0, v0, Lvn;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lvn$1;->a:Lvn;

    iget-object v0, v0, Lvn;->b:Lhl;

    invoke-virtual {v0}, Lhl;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method public getUserPasswordCred()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lvn$1;->a:Lvn;

    iget-object v0, v0, Lvn;->b:Lhl;

    invoke-virtual {v0}, Lhl;->e()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v0

    return-object v0
.end method
