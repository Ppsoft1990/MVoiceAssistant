.class Loq$1;
.super Ljava/lang/Object;
.source "PermissionBizHelper.java"

# interfaces
.implements Lcom/iflytek/yd/http/interfaces/HttpContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Loq;


# direct methods
.method constructor <init>(Loq;)V
    .locals 0
    .param p1, "this$0"    # Loq;

    .prologue
    .line 515
    iput-object p1, p0, Loq$1;->a:Loq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Loq$1;->a:Loq;

    invoke-static {v0}, Loq;->a(Loq;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Loq$1;->a:Loq;

    invoke-static {v0}, Loq;->b(Loq;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method public getUserPasswordCred()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Loq$1;->a:Loq;

    invoke-static {v0}, Loq;->b(Loq;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->e()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v0

    return-object v0
.end method
