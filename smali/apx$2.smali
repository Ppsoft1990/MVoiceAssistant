.class Lapx$2;
.super Ljava/lang/Object;
.source "WoMusicOperation.java"

# interfaces
.implements Lcom/iflytek/yd/http/interfaces/HttpContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapx;


# direct methods
.method constructor <init>(Lapx;)V
    .locals 0
    .param p1, "this$0"    # Lapx;

    .prologue
    .line 202
    iput-object p1, p0, Lapx$2;->a:Lapx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lapx$2;->a:Lapx;

    invoke-static {v0}, Lapx;->d(Lapx;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lapx$2;->a:Lapx;

    invoke-static {v0}, Lapx;->e(Lapx;)Lapy;

    move-result-object v0

    invoke-interface {v0}, Lapy;->k()Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method public getUserPasswordCred()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lapx$2;->a:Lapx;

    invoke-static {v0}, Lapx;->e(Lapx;)Lapy;

    move-result-object v0

    invoke-interface {v0}, Lapy;->l()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v0

    return-object v0
.end method
