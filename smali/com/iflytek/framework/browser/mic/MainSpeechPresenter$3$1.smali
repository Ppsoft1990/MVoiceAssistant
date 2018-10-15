.class Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3$1;
.super Ljava/lang/Object;
.source "MainSpeechPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3$1;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3$1;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;

    iget-object v0, v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$3;->b:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->e(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 226
    return-void
.end method
