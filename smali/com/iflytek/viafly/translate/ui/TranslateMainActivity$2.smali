.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;


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
    .line 1209
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1213
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layd;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lju;

    move-result-object v1

    invoke-virtual {v0, v1}, Layd;->b(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onDestroy stop tts"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layd;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lju;

    move-result-object v1

    invoke-virtual {v0, v1}, Layd;->a(Lju;)V

    .line 1220
    :cond_0
    sget-boolean v0, Laxp;->b:Z

    if-eqz v0, :cond_1

    .line 1221
    sput-boolean v2, Laxp;->c:Z

    .line 1222
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "texttranslate"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    .line 1228
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;I)I

    .line 1230
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->setRequestedOrientation(I)V

    .line 1231
    return-void

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1236
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v2

    invoke-virtual {v2, p1}, Laxr;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1249
    :goto_0
    return-void

    .line 1241
    :cond_0
    sget-boolean v1, Laxp;->b:Z

    if-nez v1, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layd;

    move-result-object v2

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslatedLang()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lju;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Lju;)V

    goto :goto_0

    .line 1246
    .end local v0    # "content":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v0

    .line 1247
    .restart local v0    # "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layd;

    move-result-object v2

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslatedLang()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lju;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Lju;)V

    goto/16 :goto_0
.end method
