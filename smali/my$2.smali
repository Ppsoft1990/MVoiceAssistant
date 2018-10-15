.class Lmy$2;
.super Ljava/lang/Object;
.source "AuthBlcHelper.java"

# interfaces
.implements Lcom/iflytek/yd/http/interfaces/HttpContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmy;


# direct methods
.method constructor <init>(Lmy;)V
    .locals 0
    .param p1, "this$0"    # Lmy;

    .prologue
    .line 167
    iput-object p1, p0, Lmy$2;->a:Lmy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lmy;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lmy$2;->a:Lmy;

    invoke-static {v0}, Lmy;->e(Lmy;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method public getUserPasswordCred()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmy$2;->a:Lmy;

    invoke-static {v0}, Lmy;->e(Lmy;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->e()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v0

    return-object v0
.end method
