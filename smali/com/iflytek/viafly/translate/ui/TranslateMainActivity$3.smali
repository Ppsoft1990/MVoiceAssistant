.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Layp$a;


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
    .line 1252
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1256
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->getmContentText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 1257
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    .line 1269
    :goto_0
    return-void

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1263
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getmContentText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 1264
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->w(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 1265
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "channel"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1268
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->finish()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(I)V

    .line 1302
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1306
    const-string/jumbo v0, "TranslateMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLanguageChoose language "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->z(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1309
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onLanguageChoose current language is same,return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 1313
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {p1}, Layb;->a(Ljava/lang/String;)Laxr;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Laxr;)Laxr;

    .line 1314
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a(Laxr;)V

    .line 1315
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->A(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v1

    invoke-virtual {v1}, Laxr;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1318
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layw;

    move-result-object v0

    invoke-virtual {v0}, Layw;->notifyDataSetChanged()V

    .line 1319
    const/4 v0, 0x0

    invoke-static {v0}, Laxp;->a(Ljava/util/List;)V

    .line 1320
    const-string/jumbo v0, "result"

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 1322
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "\u7ffb\u8bd1\u8bb0\u5f55\u5df2\u6e05\u7a7a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1279
    :goto_0
    return-void

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->x(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layp;

    move-result-object v0

    invoke-virtual {v0}, Layp;->c()V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 1284
    sget-boolean v0, Laxp;->b:Z

    if-nez v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1286
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layw;

    move-result-object v0

    invoke-virtual {v0}, Layw;->notifyDataSetChanged()V

    .line 1287
    const/4 v0, 0x0

    invoke-static {v0}, Laxp;->a(Ljava/util/List;)V

    .line 1295
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "\u6e05\u7a7a\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1297
    return-void

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f()V

    .line 1292
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "FT89517"

    const-string/jumbo v2, "d_session"

    const-string/jumbo v3, "clearall"

    invoke-static {v0, v1, v2, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
