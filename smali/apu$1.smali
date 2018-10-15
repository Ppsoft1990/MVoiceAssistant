.class Lapu$1;
.super Ljava/lang/Object;
.source "CmMusicOperation.java"

# interfaces
.implements Lcom/iflytek/yd/http/interfaces/HttpContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapu;


# direct methods
.method constructor <init>(Lapu;)V
    .locals 0
    .param p1, "this$0"    # Lapu;

    .prologue
    .line 142
    iput-object p1, p0, Lapu$1;->a:Lapu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lapu$1;->a:Lapu;

    invoke-static {v0}, Lapu;->a(Lapu;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lapu$1;->a:Lapu;

    invoke-static {v0}, Lapu;->b(Lapu;)Lapy;

    move-result-object v0

    invoke-interface {v0}, Lapy;->k()Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method public getUserPasswordCred()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lapu$1;->a:Lapu;

    invoke-static {v0}, Lapu;->b(Lapu;)Lapy;

    move-result-object v0

    invoke-interface {v0}, Lapy;->l()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v0

    return-object v0
.end method
