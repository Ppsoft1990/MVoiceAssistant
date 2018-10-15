.class Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$4;
.super Ljava/lang/Object;
.source "MainSpeechPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$4;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$4;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->f(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Lazw;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$4;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lazw;->a(Landroid/widget/EditText;)Lazw;

    .line 263
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$4;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 264
    return-void
.end method
