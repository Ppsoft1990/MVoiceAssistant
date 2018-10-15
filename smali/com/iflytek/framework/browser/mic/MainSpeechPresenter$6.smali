.class Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$6;
.super Ljava/lang/Object;
.source "MainSpeechPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b()V
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
    .line 320
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$6;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$6;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;Z)Z

    .line 324
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$6;->a:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;)V

    .line 325
    return-void
.end method
