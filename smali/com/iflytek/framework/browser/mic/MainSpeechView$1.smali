.class Lcom/iflytek/framework/browser/mic/MainSpeechView$1;
.super Ljava/lang/Object;
.source "MainSpeechView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/mic/MainSpeechView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/mic/MainSpeechView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$1;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$1;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->a(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b()V

    .line 171
    return-void
.end method
