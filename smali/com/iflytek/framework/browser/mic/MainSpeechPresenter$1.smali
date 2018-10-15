.class Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$1;
.super Ljava/lang/Object;
.source "MainSpeechPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b(Landroid/widget/EditText;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
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
    .line 99
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$1;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$1;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void
.end method
