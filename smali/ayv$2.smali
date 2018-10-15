.class Layv$2;
.super Ljava/lang/Object;
.source "TranslatePicPresenter.java"

# interfaces
.implements Laxz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layv;->handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layv;


# direct methods
.method constructor <init>(Layv;)V
    .locals 0
    .param p1, "this$0"    # Layv;

    .prologue
    .line 192
    iput-object p1, p0, Layv$2;->a:Layv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 207
    const-string/jumbo v0, "TranslatePicPresenter"

    const-string/jumbo v1, "TranslatePicPresenter handle result fail"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Layv$2;->a:Layv;

    invoke-static {v0}, Layv;->b(Layv;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "invalidTra"

    invoke-virtual {v0, v1}, Lxq;->g(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Layv$2;->a:Layv;

    invoke-static {v0}, Layv;->a(Layv;)Lays;

    move-result-object v0

    const-string/jumbo v1, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-interface {v0, v1}, Lays;->a(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)V
    .locals 3
    .param p1, "result"    # Lcom/iflytek/viafly/translate/entity/TranslateResult;

    .prologue
    .line 195
    const-string/jumbo v1, "TranslatePicPresenter"

    const-string/jumbo v2, "TranslatePicPresenter handle result success"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz p1, :cond_0

    .line 197
    invoke-static {p1}, Laya;->a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    move-result-object v0

    .line 198
    .local v0, "item":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    iget-object v1, p0, Layv$2;->a:Layv;

    invoke-static {v1}, Layv;->a(Layv;)Lays;

    move-result-object v1

    invoke-interface {v1, v0}, Lays;->a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    .line 203
    .end local v0    # "item":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Layv$2;->a:Layv;

    invoke-static {v1}, Layv;->b(Layv;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "invalidTra"

    invoke-virtual {v1, v2}, Lxq;->g(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Layv$2;->a:Layv;

    invoke-static {v1}, Layv;->a(Layv;)Lays;

    move-result-object v1

    const-string/jumbo v2, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-interface {v1, v2}, Lays;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
