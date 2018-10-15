.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$6;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->onClick(Landroid/view/View;)V
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
    .line 1413
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$6;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$6;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1419
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$6;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$6;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;Z)V

    .line 1420
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$6;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 1422
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$6;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "translateMain"

    invoke-virtual {v0, v1}, Lxq;->k(Ljava/lang/String;)V

    .line 1423
    return-void
.end method
