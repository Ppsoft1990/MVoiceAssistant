.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$13;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)V
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
    .line 638
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$13;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$13;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$13;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 643
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$13;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Z)V

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$13;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    goto :goto_0
.end method
