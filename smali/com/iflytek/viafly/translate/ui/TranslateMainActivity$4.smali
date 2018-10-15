.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Layo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b()V

    .line 1332
    return-void
.end method

.method public a(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 1339
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v2, "edit"

    invoke-static {v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    .line 1340
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getType()I

    move-result v0

    .line 1341
    .local v0, "type":I
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    move-result-object v2

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v3

    invoke-virtual {v3, v0}, Laxr;->b(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v4

    invoke-virtual {v4, v0}, Laxr;->c(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v5

    invoke-virtual {v5, v0}, Laxr;->d(I)Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 1342
    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1346
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onFullScreenClick "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 1350
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;I)I

    .line 1352
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "fullscreen"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->setRequestedOrientation(I)V

    .line 1356
    return-void
.end method
