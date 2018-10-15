.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$2;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->onInterruptedCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;

    iget-object v0, v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;

    iget-object v0, v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setMicState(Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;)V

    .line 846
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;

    iget-object v0, v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInCancelState()V

    .line 847
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;

    iget-object v0, v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layw;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Layw;->a(I)V

    .line 849
    :cond_0
    return-void
.end method
