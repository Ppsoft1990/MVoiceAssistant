.class Layv$a;
.super Ljava/lang/Object;
.source "TranslatePicPresenter.java"

# interfaces
.implements Layo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Layv;

.field private b:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;


# direct methods
.method public constructor <init>(Layv;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 0
    .param p1, "this$0"    # Layv;
    .param p2, "resultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 362
    iput-object p1, p0, Layv$a;->a:Layv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Layv$a;->b:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 364
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Layv$a;->a:Layv;

    invoke-static {v0}, Layv;->c(Layv;)Layx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Layv$a;->a:Layv;

    invoke-static {v0}, Layv;->c(Layv;)Layx;

    move-result-object v0

    invoke-virtual {v0}, Layx;->dismiss()V

    .line 371
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 376
    iget-object v1, p0, Layv$a;->a:Layv;

    invoke-static {v1}, Layv;->b(Layv;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "edit"

    invoke-virtual {v1, v2}, Lxq;->f(Ljava/lang/String;)V

    .line 377
    new-instance v0, Layq;

    iget-object v1, p0, Layv$a;->a:Layv;

    invoke-static {v1}, Layv;->b(Layv;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Layq;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "dialog":Layq;
    iget-object v1, p0, Layv$a;->b:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Layv$a$1;

    invoke-direct {v2, p0}, Layv$a$1;-><init>(Layv$a;)V

    invoke-virtual {v0, v1, v2}, Layq;->a(Ljava/lang/String;Layq$a;)V

    .line 384
    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 389
    iget-object v0, p0, Layv$a;->a:Layv;

    iget-object v1, p0, Layv$a;->b:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v0, v1}, Layv;->e(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    .line 390
    return-void
.end method
