.class Lvx$1;
.super Ljava/lang/Object;
.source "BizRequestHelper.java"

# interfaces
.implements Lcom/iflytek/yd/http/interfaces/HttpContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvx;


# direct methods
.method constructor <init>(Lvx;)V
    .locals 0
    .param p1, "this$0"    # Lvx;

    .prologue
    .line 38
    iput-object p1, p0, Lvx$1;->a:Lvx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lvx$1;->a:Lvx;

    invoke-static {v0}, Lvx;->access$000(Lvx;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lvx$1;->a:Lvx;

    invoke-static {v0}, Lvx;->access$000(Lvx;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method public getUserPasswordCred()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lvx$1;->a:Lvx;

    invoke-static {v0}, Lvx;->access$000(Lvx;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->e()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v0

    return-object v0
.end method
