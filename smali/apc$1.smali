.class Lapc$1;
.super Ljava/lang/Object;
.source "RequestMonitorHelper.java"

# interfaces
.implements Lcom/iflytek/yd/http/interfaces/HttpContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapc;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhl;

.field final synthetic b:Lapc;


# direct methods
.method constructor <init>(Lapc;Lhl;)V
    .locals 0
    .param p1, "this$0"    # Lapc;

    .prologue
    .line 81
    iput-object p1, p0, Lapc$1;->b:Lapc;

    iput-object p2, p0, Lapc$1;->a:Lhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lapc$1;->b:Lapc;

    invoke-static {v0}, Lapc;->a(Lapc;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lapc$1;->a:Lhl;

    invoke-virtual {v0}, Lhl;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method public getUserPasswordCred()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lapc$1;->a:Lhl;

    invoke-virtual {v0}, Lhl;->e()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v0

    return-object v0
.end method
