.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$1;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->onPlayBeginCallBack()V
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
    .line 821
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;

    iget-object v0, v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a()V

    .line 825
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;

    iget-object v0, v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 826
    return-void
.end method
