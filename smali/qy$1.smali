.class Lqy$1;
.super Ljava/lang/Object;
.source "CommandWordModel.java"

# interfaces
.implements Lqv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqy;->a(Lqx;Lqv$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqv$a",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lqv$a;

.field final synthetic b:Lqy;


# direct methods
.method constructor <init>(Lqy;Lqv$a;)V
    .locals 0
    .param p1, "this$0"    # Lqy;

    .prologue
    .line 59
    iput-object p1, p0, Lqy$1;->b:Lqy;

    iput-object p2, p0, Lqy$1;->a:Lqv$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lqy$1;->a:Lqv$a;

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Lqx;

    invoke-direct {v0}, Lqx;-><init>()V

    .line 77
    .local v0, "commandWordEntity":Lqx;
    iget-object v1, p0, Lqy$1;->b:Lqy;

    invoke-static {v1}, Lqy;->a(Lqy;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqx;->a(Ljava/util/List;)V

    .line 78
    iget-object v1, p0, Lqy$1;->a:Lqv$a;

    invoke-interface {v1, v0}, Lqv$a;->a(Ljava/lang/Object;)V

    .line 80
    .end local v0    # "commandWordEntity":Lqx;
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lqy$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lqy$1;->b:Lqy;

    invoke-static {v1, p1}, Lqy;->a(Lqy;Ljava/lang/String;)Lqx;

    move-result-object v0

    .line 64
    .local v0, "commandWordEntity":Lqx;
    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lqy$1;->a:Lqv$a;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lqy$1;->a:Lqv$a;

    invoke-interface {v1, v0}, Lqv$a;->a(Ljava/lang/Object;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lqy$1;->a()V

    goto :goto_0
.end method
