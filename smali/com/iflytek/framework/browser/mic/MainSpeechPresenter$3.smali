.class Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;
.super Ljava/lang/Object;
.source "MainSpeechPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->onEvent(Laii;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laii;

.field final synthetic b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;Laii;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    iput-object p2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->a:Laii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 198
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->a:Laii;

    iget v2, v2, Laii;->a:I

    sget v4, Laii;->c:I

    if-ne v2, v4, :cond_3

    .line 199
    invoke-static {}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lazw;->d(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c()V

    .line 201
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v2, v6, v7}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;J)J

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 204
    .local v1, "toolVisible":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 205
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    sget-object v3, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    goto :goto_0

    .end local v1    # "toolVisible":Z
    :cond_2
    move v1, v3

    .line 203
    goto :goto_1

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->a:Laii;

    iget v2, v2, Laii;->a:I

    sget v4, Laii;->d:I

    if-ne v2, v4, :cond_0

    .line 209
    invoke-static {}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lazw;->d(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->c()V

    .line 211
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v2, v6, v7}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;J)J

    goto :goto_0

    .line 213
    :cond_4
    sget-object v2, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v4}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->d(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    move-result-object v4

    if-eq v2, v4, :cond_0

    .line 216
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->a:Laii;

    iget-object v2, v2, Laii;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->a:Laii;

    iget-object v2, v2, Laii;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->f(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Lazw;

    move-result-object v2

    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v4}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v2, v4}, Lazw;->a(Landroid/widget/EditText;)Lazw;

    .line 218
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    sget-object v4, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {v2, v4}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 219
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->a:Laii;

    iget-object v2, v2, Laii;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->a:Laii;

    iget-object v2, v2, Laii;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 220
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 222
    new-instance v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3$1;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3$1;-><init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;)V

    .line 228
    .local v0, "requestFocus":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 229
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/widget/EditText;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v0, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 216
    .end local v0    # "requestFocus":Ljava/lang/Runnable;
    :cond_5
    const-string/jumbo v2, ""

    goto :goto_2

    :cond_6
    move v2, v3

    .line 219
    goto :goto_3
.end method
