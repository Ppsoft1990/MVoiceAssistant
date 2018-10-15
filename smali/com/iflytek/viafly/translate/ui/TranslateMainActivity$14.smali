.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$14;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->onResume()V
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
    .line 717
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$14;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 720
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onResume pauseWake"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$14;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->o(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onResume restartMic "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$14;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$14;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Z)Z

    .line 728
    return-void
.end method
