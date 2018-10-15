.class Lcom/iflytek/framework/browser/mic/MainCommandWordView$1;
.super Ljava/lang/Object;
.source "MainCommandWordView.java"

# interfaces
.implements Lqw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a(Lqv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqw$b",
        "<",
        "Lqx;",
        "Lqx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/mic/MainCommandWordView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/mic/MainCommandWordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView$1;->a:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lqx;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Lqx;

    invoke-virtual {p0, p1}, Lcom/iflytek/framework/browser/mic/MainCommandWordView$1;->a(Lqx;)V

    return-void
.end method

.method public a(Lqx;)V
    .locals 2
    .param p1, "data"    # Lqx;

    .prologue
    .line 80
    const-string/jumbo v0, "MainCommandWordView"

    const-string/jumbo v1, "asdasda"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView$1;->a:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-virtual {p1}, Lqx;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a(Lcom/iflytek/framework/browser/mic/MainCommandWordView;Ljava/util/List;)Ljava/util/List;

    .line 82
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainCommandWordView$1;->a()Lqx;

    move-result-object v0

    return-object v0
.end method
